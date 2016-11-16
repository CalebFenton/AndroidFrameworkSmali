.class public final Lcom/android/internal/os/AtomicFile;
.super Ljava/lang/Object;
.source "AtomicFile.java"


# instance fields
.field private final mBackupName:Ljava/io/File;

.field private final mBaseName:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "baseName"    # Ljava/io/File;

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    iput-object p1, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@5
    .line 49
    new-instance v0, Ljava/io/File;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, ".bak"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@22
    iput-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    #@24
    .line 47
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@5
    .line 139
    iget-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    #@7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@a
    .line 137
    return-void
.end method

.method public exists()Z
    .locals 1

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    #@a
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method public failWrite(Ljava/io/FileOutputStream;)V
    .locals 3
    .param p1, "str"    # Ljava/io/FileOutputStream;

    #@0
    .prologue
    .line 102
    if-eqz p1, :cond_0

    #@2
    .line 103
    invoke-static {p1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@5
    .line 105
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    #@8
    .line 106
    iget-object v1, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@a
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@d
    .line 107
    iget-object v1, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    #@f
    iget-object v2, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@11
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 101
    :cond_0
    :goto_0
    return-void

    #@15
    .line 108
    :catch_0
    move-exception v0

    #@16
    .line 109
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "AtomicFile"

    #@19
    const-string/jumbo v2, "failWrite: Got exception:"

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    goto :goto_0
.end method

.method public finishWrite(Ljava/io/FileOutputStream;)V
    .locals 3
    .param p1, "str"    # Ljava/io/FileOutputStream;

    #@0
    .prologue
    .line 90
    if-eqz p1, :cond_0

    #@2
    .line 91
    invoke-static {p1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@5
    .line 93
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    #@8
    .line 94
    iget-object v1, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    #@a
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 89
    :cond_0
    :goto_0
    return-void

    #@e
    .line 95
    :catch_0
    move-exception v0

    #@f
    .line 96
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "AtomicFile"

    #@12
    const-string/jumbo v2, "finishWrite: Got exception:"

    #@15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    goto :goto_0
.end method

.method public getBaseFile()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public openAppend()Ljava/io/FileOutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    #@2
    iget-object v2, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@4
    const/4 v3, 0x1

    #@5
    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    return-object v1

    #@9
    .line 117
    :catch_0
    move-exception v0

    #@a
    .line 118
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/io/IOException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Couldn\'t append "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    iget-object v3, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1
.end method

.method public openRead()Ljava/io/FileInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 144
    iget-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@a
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@d
    .line 145
    iget-object v0, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    #@f
    iget-object v1, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@11
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@14
    .line 147
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    #@16
    iget-object v1, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@18
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@1b
    return-object v0
.end method

.method public readFully()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@3
    move-result-object v5

    #@4
    .line 153
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    #@5
    .line 154
    .local v4, "pos":I
    :try_start_0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    #@8
    move-result v1

    #@9
    .line 155
    .local v1, "avail":I
    new-array v2, v1, [B

    #@b
    .line 157
    .local v2, "data":[B
    :cond_0
    :goto_0
    array-length v6, v2

    #@c
    sub-int/2addr v6, v4

    #@d
    invoke-virtual {v5, v2, v4, v6}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v0

    #@11
    .line 160
    .local v0, "amt":I
    if-gtz v0, :cond_1

    #@13
    .line 174
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    #@16
    .line 163
    return-object v2

    #@17
    .line 165
    :cond_1
    add-int/2addr v4, v0

    #@18
    .line 166
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    #@1b
    move-result v1

    #@1c
    .line 167
    array-length v6, v2

    #@1d
    sub-int/2addr v6, v4

    #@1e
    if-le v1, v6, :cond_0

    #@20
    .line 168
    add-int v6, v4, v1

    #@22
    new-array v3, v6, [B

    #@24
    .line 169
    .local v3, "newData":[B
    const/4 v6, 0x0

    #@25
    const/4 v7, 0x0

    #@26
    invoke-static {v2, v6, v3, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    .line 170
    move-object v2, v3

    #@2a
    goto :goto_0

    #@2b
    .line 173
    .end local v0    # "amt":I
    .end local v1    # "avail":I
    .end local v2    # "data":[B
    .end local v3    # "newData":[B
    :catchall_0
    move-exception v6

    #@2c
    .line 174
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    #@2f
    .line 173
    throw v6
.end method

.method public startWrite()Ljava/io/FileOutputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 58
    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    #@6
    move-result v4

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 59
    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    #@b
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    #@e
    move-result v4

    #@f
    if-nez v4, :cond_1

    #@11
    .line 60
    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@13
    iget-object v5, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    #@15
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@18
    move-result v4

    #@19
    if-nez v4, :cond_0

    #@1b
    .line 61
    const-string/jumbo v4, "AtomicFile"

    #@1e
    new-instance v5, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v6, "Couldn\'t rename file "

    #@26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    iget-object v6, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@2c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    .line 62
    const-string/jumbo v6, " to backup file "

    #@33
    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    .line 62
    iget-object v6, p0, Lcom/android/internal/os/AtomicFile;->mBackupName:Ljava/io/File;

    #@39
    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 68
    :cond_0
    :goto_0
    const/4 v3, 0x0

    #@45
    .line 70
    .local v3, "str":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    #@47
    .end local v3    # "str":Ljava/io/FileOutputStream;
    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@49
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    .line 86
    .local v3, "str":Ljava/io/FileOutputStream;
    :goto_1
    return-object v3

    #@4d
    .line 65
    .end local v3    # "str":Ljava/io/FileOutputStream;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@4f
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@52
    goto :goto_0

    #@53
    .line 71
    :catch_0
    move-exception v0

    #@54
    .line 72
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@56
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@59
    move-result-object v2

    #@5a
    .line 73
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    #@5d
    move-result v4

    #@5e
    if-nez v4, :cond_2

    #@60
    .line 74
    new-instance v4, Ljava/io/IOException;

    #@62
    new-instance v5, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v6, "Couldn\'t create directory "

    #@6a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    iget-object v6, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v5

    #@74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v5

    #@78
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v4

    #@7c
    .line 77
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@7f
    move-result-object v4

    #@80
    .line 78
    const/16 v5, 0x1f9

    #@82
    .line 76
    invoke-static {v4, v5, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@85
    .line 81
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    #@87
    iget-object v4, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@89
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@8c
    .restart local v3    # "str":Ljava/io/FileOutputStream;
    goto :goto_1

    #@8d
    .line 82
    .end local v3    # "str":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    #@8e
    .line 83
    .local v1, "e2":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/io/IOException;

    #@90
    new-instance v5, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v6, "Couldn\'t create "

    #@98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v5

    #@9c
    iget-object v6, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@9e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v5

    #@a2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v5

    #@a6
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v4
.end method

.method public truncate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    #@2
    iget-object v3, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@4
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@7
    .line 125
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@a
    .line 126
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@d
    .line 122
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    #@e
    .line 127
    :catch_0
    move-exception v0

    #@f
    .line 128
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/io/IOException;

    #@11
    new-instance v4, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "Couldn\'t append "

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    iget-object v5, p0, Lcom/android/internal/os/AtomicFile;->mBaseName:Ljava/io/File;

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v3

    #@2b
    .line 129
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    #@2c
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method
