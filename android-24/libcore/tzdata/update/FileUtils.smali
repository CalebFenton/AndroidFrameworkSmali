.class public final Llibcore/tzdata/update/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static calculateChecksum(Ljava/io/File;)J
    .locals 10
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 109
    const/16 v0, 0x2004

    #@3
    .line 110
    .local v0, "BUFFER_SIZE":I
    new-instance v3, Ljava/util/zip/CRC32;

    #@5
    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    #@8
    .line 111
    .local v3, "crc32":Ljava/util/zip/CRC32;
    const/4 v4, 0x0

    #@9
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    #@b
    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    .line 112
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    const/16 v6, 0x2004

    #@10
    :try_start_1
    new-array v1, v6, [B

    #@12
    .line 114
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    #@15
    move-result v2

    #@16
    .local v2, "count":I
    const/4 v6, -0x1

    #@17
    if-eq v2, v6, :cond_1

    #@19
    .line 115
    const/4 v6, 0x0

    #@1a
    invoke-virtual {v3, v1, v6, v2}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@1d
    goto :goto_0

    #@1e
    .line 117
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    :catch_0
    move-exception v6

    #@1f
    move-object v4, v5

    #@20
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    :catchall_0
    move-exception v7

    #@22
    move-object v9, v7

    #@23
    move-object v7, v6

    #@24
    move-object v6, v9

    #@25
    :goto_2
    if-eqz v4, :cond_0

    #@27
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    #@2a
    :cond_0
    :goto_3
    if-eqz v7, :cond_4

    #@2c
    throw v7

    #@2d
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :cond_1
    if-eqz v5, :cond_2

    #@2f
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    #@32
    :cond_2
    :goto_4
    if-eqz v7, :cond_5

    #@34
    throw v7

    #@35
    :catch_1
    move-exception v7

    #@36
    goto :goto_4

    #@37
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v8

    #@38
    if-nez v7, :cond_3

    #@3a
    move-object v7, v8

    #@3b
    goto :goto_3

    #@3c
    :cond_3
    if-eq v7, v8, :cond_0

    #@3e
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@41
    goto :goto_3

    #@42
    :cond_4
    throw v6

    #@43
    .line 118
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :cond_5
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    #@46
    move-result-wide v6

    #@47
    return-wide v6

    #@48
    .line 117
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    #@49
    goto :goto_2

    #@4a
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v6

    #@4b
    move-object v4, v5

    #@4c
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    goto :goto_2

    #@4d
    .local v4, "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v6

    #@4e
    goto :goto_1
.end method

.method public static createSubFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "parentDir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 48
    new-instance v1, Ljava/io/File;

    #@2
    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@5
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    #@8
    move-result-object v0

    #@9
    .line 49
    .local v0, "subFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_0

    #@17
    .line 50
    new-instance v1, Ljava/io/IOException;

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, " must exist beneath "

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 51
    const-string/jumbo v3, ". Canonicalized subpath: "

    #@30
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v1

    #@40
    .line 53
    :cond_0
    return-object v0
.end method

.method public static deleteRecursive(Ljava/io/File;)V
    .locals 6
    .param p0, "toDelete"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 151
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_3

    #@7
    .line 152
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@a
    move-result-object v3

    #@b
    array-length v4, v3

    #@c
    :goto_0
    if-ge v2, v4, :cond_2

    #@e
    aget-object v0, v3, v2

    #@10
    .line 153
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_0

    #@16
    invoke-static {v0}, Llibcore/tzdata/update/FileUtils;->isSymlink(Ljava/io/File;)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_1

    #@1c
    .line 159
    :cond_0
    invoke-static {v0}, Llibcore/tzdata/update/FileUtils;->doDelete(Ljava/io/File;)V

    #@1f
    .line 152
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 156
    :cond_1
    invoke-static {v0}, Llibcore/tzdata/update/FileUtils;->deleteRecursive(Ljava/io/File;)V

    #@25
    goto :goto_1

    #@26
    .line 162
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 163
    .local v1, "remainingFiles":[Ljava/lang/String;
    array-length v2, v1

    #@2b
    if-eqz v2, :cond_3

    #@2d
    .line 164
    new-instance v2, Ljava/io/IOException;

    #@2f
    new-instance v3, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v4, "Unable to delete files: "

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v2

    #@4b
    .line 168
    .end local v1    # "remainingFiles":[Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Llibcore/tzdata/update/FileUtils;->doDelete(Ljava/io/File;)V

    #@4e
    .line 150
    return-void
.end method

.method public static doDelete(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 139
    new-instance v0, Ljava/io/IOException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Unable to delete: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 137
    :cond_0
    return-void
.end method

.method public static ensureDirectoriesExist(Ljava/io/File;Z)V
    .locals 7
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "makeWorldReadable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    new-instance v3, Ljava/util/LinkedList;

    #@2
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    #@5
    .line 69
    .local v3, "dirs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    move-object v0, p0

    #@6
    .line 71
    .local v0, "currentDir":Ljava/io/File;
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@9
    .line 72
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@c
    move-result-object v0

    #@d
    .line 73
    if-nez v0, :cond_0

    #@f
    .line 75
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    .local v2, "dirToCheck$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_4

    #@19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/io/File;

    #@1f
    .line 76
    .local v1, "dirToCheck":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@22
    move-result v4

    #@23
    if-nez v4, :cond_3

    #@25
    .line 77
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    #@28
    move-result v4

    #@29
    if-nez v4, :cond_2

    #@2b
    .line 78
    new-instance v4, Ljava/io/IOException;

    #@2d
    new-instance v5, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v6, "Unable to create directory: "

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@44
    throw v4

    #@45
    .line 80
    :cond_2
    if-eqz p1, :cond_1

    #@47
    .line 81
    invoke-static {v1}, Llibcore/tzdata/update/FileUtils;->makeDirectoryWorldAccessible(Ljava/io/File;)V

    #@4a
    goto :goto_0

    #@4b
    .line 83
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    #@4e
    move-result v4

    #@4f
    if-nez v4, :cond_1

    #@51
    .line 84
    new-instance v4, Ljava/io/IOException;

    #@53
    new-instance v5, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v5

    #@5c
    const-string/jumbo v6, " exists but is not a directory"

    #@5f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v4

    #@6b
    .line 67
    .end local v1    # "dirToCheck":Ljava/io/File;
    :cond_4
    return-void
.end method

.method public static ensureFileDoesNotExist(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 130
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 131
    new-instance v0, Ljava/io/IOException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, " is not a file"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 133
    :cond_0
    invoke-static {p0}, Llibcore/tzdata/update/FileUtils;->doDelete(Ljava/io/File;)V

    #@29
    .line 128
    :cond_1
    return-void
.end method

.method public static varargs filesExist(Ljava/io/File;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "rootDir"    # Ljava/io/File;
    .param p1, "fileNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 172
    array-length v4, p1

    #@2
    move v2, v3

    #@3
    :goto_0
    if-ge v2, v4, :cond_1

    #@5
    aget-object v1, p1, v2

    #@7
    .line 173
    .local v1, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    #@9
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    .line 174
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@f
    move-result v5

    #@10
    if-nez v5, :cond_0

    #@12
    .line 175
    return v3

    #@13
    .line 172
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 178
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    #@17
    return v2
.end method

.method public static isSymlink(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 146
    .local v0, "baseName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    #@6
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    #@d
    move-result-object v3

    #@e
    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@11
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 147
    .local v1, "canonicalPathExceptBaseName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    const/4 v2, 0x0

    #@20
    :goto_0
    return v2

    #@21
    :cond_0
    const/4 v2, 0x1

    #@22
    goto :goto_0
.end method

.method public static makeDirectoryWorldAccessible(Ljava/io/File;)V
    .locals 3
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 91
    new-instance v0, Ljava/io/IOException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, " must be a directory"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 93
    :cond_0
    invoke-static {p0}, Llibcore/tzdata/update/FileUtils;->makeWorldReadable(Ljava/io/File;)V

    #@23
    .line 94
    const/4 v0, 0x1

    #@24
    const/4 v1, 0x0

    #@25
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    #@28
    move-result v0

    #@29
    if-nez v0, :cond_1

    #@2b
    .line 95
    new-instance v0, Ljava/io/IOException;

    #@2d
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v2, "Unable to make "

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    const-string/jumbo v2, " world-executable"

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v0

    #@4c
    .line 89
    :cond_1
    return-void
.end method

.method public static makeWorldReadable(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 101
    new-instance v0, Ljava/io/IOException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Unable to make "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, " world-readable"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 99
    :cond_0
    return-void
.end method

.method public static readLines(Ljava/io/File;)Ljava/util/List;
    .locals 9
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 185
    new-instance v2, Ljava/io/FileInputStream;

    #@3
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@6
    .line 186
    .local v2, "in":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    #@7
    .local v0, "fileReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    #@9
    .line 187
    new-instance v5, Ljava/io/InputStreamReader;

    #@b
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@d
    invoke-direct {v5, v2, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    #@10
    .line 186
    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@13
    .line 189
    .end local v0    # "fileReader":Ljava/io/BufferedReader;
    .local v1, "fileReader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    #@15
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@18
    .line 191
    .local v4, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@1e
    .line 192
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@21
    goto :goto_0

    #@22
    .line 195
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    #@23
    move-object v0, v1

    #@24
    .end local v1    # "fileReader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    :catchall_0
    move-exception v6

    #@26
    move-object v8, v6

    #@27
    move-object v6, v5

    #@28
    move-object v5, v8

    #@29
    :goto_2
    if-eqz v0, :cond_0

    #@2b
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    #@2e
    :cond_0
    :goto_3
    if-eqz v6, :cond_5

    #@30
    throw v6

    #@31
    .restart local v1    # "fileReader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    if-eqz v1, :cond_2

    #@33
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    #@36
    :cond_2
    :goto_4
    if-eqz v6, :cond_3

    #@38
    throw v6

    #@39
    :catch_1
    move-exception v6

    #@3a
    goto :goto_4

    #@3b
    .line 194
    :cond_3
    return-object v4

    #@3c
    .line 195
    .end local v1    # "fileReader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v7

    #@3d
    if-nez v6, :cond_4

    #@3f
    move-object v6, v7

    #@40
    goto :goto_3

    #@41
    :cond_4
    if-eq v6, v7, :cond_0

    #@43
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@46
    goto :goto_3

    #@47
    :cond_5
    throw v5

    #@48
    .restart local v0    # "fileReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    #@49
    goto :goto_2

    #@4a
    .end local v0    # "fileReader":Ljava/io/BufferedReader;
    .restart local v1    # "fileReader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v5

    #@4b
    move-object v0, v1

    #@4c
    .end local v1    # "fileReader":Ljava/io/BufferedReader;
    .local v0, "fileReader":Ljava/io/BufferedReader;
    goto :goto_2

    #@4d
    .local v0, "fileReader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v5

    #@4e
    goto :goto_1
.end method

.method public static rename(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    invoke-static {p1}, Llibcore/tzdata/update/FileUtils;->ensureFileDoesNotExist(Ljava/io/File;)V

    #@3
    .line 123
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 124
    new-instance v0, Ljava/io/IOException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Unable to rename "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, " to "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 121
    :cond_0
    return-void
.end method
