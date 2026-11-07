.class public Landroid/util/AtomicFile;
.super Ljava/lang/Object;
.source "AtomicFile.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "AtomicFile"


# instance fields
.field private final greylist-max-o mBaseName:Ljava/io/File;

.field private blacklist mCommitEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

.field private final blacklist mLegacyBackupName:Ljava/io/File;

.field private final blacklist mNewName:Ljava/io/File;


# direct methods
.method public constructor whitelist <init>(Ljava/io/File;)V
    .registers 4
    .param p1, "baseName"    # Ljava/io/File;

    .line 65
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/util/SystemConfigFileCommitEventLogger;

    invoke-direct {p0, p1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Landroid/util/SystemConfigFileCommitEventLogger;)V

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;Landroid/util/SystemConfigFileCommitEventLogger;)V
    .registers 6
    .param p1, "baseName"    # Ljava/io/File;
    .param p2, "commitEventLogger"    # Landroid/util/SystemConfigFileCommitEventLogger;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroid/util/AtomicFile;->mBaseName:Ljava/io/File;

    .line 89
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".new"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/util/AtomicFile;->mNewName:Ljava/io/File;

    .line 90
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    .line 91
    iput-object p2, p0, Landroid/util/AtomicFile;->mCommitEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

    .line 92
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .param p1, "baseName"    # Ljava/io/File;
    .param p2, "commitTag"    # Ljava/lang/String;

    .line 75
    new-instance v0, Landroid/util/SystemConfigFileCommitEventLogger;

    invoke-direct {v0, p2}, Landroid/util/SystemConfigFileCommitEventLogger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Landroid/util/SystemConfigFileCommitEventLogger;)V

    .line 76
    return-void
.end method

.method private static blacklist rename(Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .param p0, "source"    # Ljava/io/File;
    .param p1, "target"    # Ljava/io/File;

    .line 345
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "AtomicFile"

    if-eqz v0, :cond_24

    .line 346
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_24

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete file which is a directory "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_24
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to rename "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_4a
    return-void
.end method


# virtual methods
.method public whitelist delete()V
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 107
    iget-object v0, p0, Landroid/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 108
    iget-object v0, p0, Landroid/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 109
    return-void
.end method

.method public greylist-max-o exists()Z
    .registers 2

    .line 269
    iget-object v0, p0, Landroid/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public whitelist failWrite(Ljava/io/FileOutputStream;)V
    .registers 5
    .param p1, "str"    # Ljava/io/FileOutputStream;

    .line 196
    if-nez p1, :cond_3

    .line 197
    return-void

    .line 199
    :cond_3
    invoke-static {p1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    move-result v0

    const-string v1, "AtomicFile"

    if-nez v0, :cond_10

    .line 200
    const-string v0, "Failed to sync file output stream"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_10
    :try_start_10
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_14

    .line 206
    goto :goto_1a

    .line 204
    :catch_14
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Failed to close file output stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1a
    iget-object v0, p0, Landroid/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete new file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_3a
    return-void
.end method

.method public whitelist finishWrite(Ljava/io/FileOutputStream;)V
    .registers 5
    .param p1, "str"    # Ljava/io/FileOutputStream;

    .line 173
    if-nez p1, :cond_3

    .line 174
    return-void

    .line 176
    :cond_3
    invoke-static {p1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    move-result v0

    const-string v1, "AtomicFile"

    if-nez v0, :cond_10

    .line 177
    const-string v0, "Failed to sync file output stream"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_10
    :try_start_10
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_14

    .line 183
    goto :goto_1a

    .line 181
    :catch_14
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Failed to close file output stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1a
    iget-object v0, p0, Landroid/util/AtomicFile;->mNewName:Ljava/io/File;

    iget-object v1, p0, Landroid/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-static {v0, v1}, Landroid/util/AtomicFile;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 185
    iget-object v0, p0, Landroid/util/AtomicFile;->mCommitEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

    if-eqz v0, :cond_2a

    .line 186
    iget-object v0, p0, Landroid/util/AtomicFile;->mCommitEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

    invoke-virtual {v0}, Landroid/util/SystemConfigFileCommitEventLogger;->onFinishWrite()V

    .line 188
    :cond_2a
    return-void
.end method

.method public whitelist getBaseFile()Ljava/io/File;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/util/AtomicFile;->mBaseName:Ljava/io/File;

    return-object v0
.end method

.method public whitelist getLastModifiedTime()J
    .registers 3

    .line 280
    iget-object v0, p0, Landroid/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 281
    iget-object v0, p0, Landroid/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    .line 283
    :cond_f
    iget-object v0, p0, Landroid/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o openAppend()Ljava/io/FileOutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/util/AtomicFile;->mBaseName:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 232
    :catch_9
    move-exception v0

    .line 233
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t append "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist openRead()Ljava/io/FileInputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Landroid/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 245
    iget-object v0, p0, Landroid/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    iget-object v1, p0, Landroid/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-static {v0, v1}, Landroid/util/AtomicFile;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 255
    :cond_f
    iget-object v0, p0, Landroid/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Landroid/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 256
    iget-object v0, p0, Landroid/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_41

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete outdated new file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtomicFile"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_41
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroid/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public whitelist readFully()[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 293
    .local v0, "stream":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 294
    .local v1, "pos":I
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v2

    .line 295
    .local v2, "avail":I
    new-array v3, v2, [B

    .line 297
    .local v3, "data":[B
    :goto_b
    array-length v4, v3

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_2c

    .line 300
    .local v4, "amt":I
    if-gtz v4, :cond_18

    .line 303
    nop

    .line 314
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 303
    return-object v3

    .line 305
    :cond_18
    add-int/2addr v1, v4

    .line 306
    :try_start_19
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v5

    move v2, v5

    .line 307
    array-length v5, v3

    sub-int/2addr v5, v1

    if-le v2, v5, :cond_2b

    .line 308
    add-int v5, v1, v2

    new-array v5, v5, [B

    .line 309
    .local v5, "newData":[B
    const/4 v6, 0x0

    invoke-static {v3, v6, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_2c

    .line 310
    move-object v3, v5

    .line 312
    .end local v4    # "amt":I
    .end local v5    # "newData":[B
    :cond_2b
    goto :goto_b

    .line 314
    .end local v1    # "pos":I
    .end local v2    # "avail":I
    .end local v3    # "data":[B
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 315
    throw v1
.end method

.method public whitelist startWrite()Ljava/io/FileOutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o startWrite(J)Ljava/io/FileOutputStream;
    .registers 9
    .param p1, "startTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    iget-object v0, p0, Landroid/util/AtomicFile;->mCommitEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

    if-eqz v0, :cond_e

    .line 141
    iget-object v0, p0, Landroid/util/AtomicFile;->mCommitEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

    invoke-virtual {v0, p1, p2}, Landroid/util/SystemConfigFileCommitEventLogger;->setStartTime(J)V

    .line 142
    iget-object v0, p0, Landroid/util/AtomicFile;->mCommitEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

    invoke-virtual {v0}, Landroid/util/SystemConfigFileCommitEventLogger;->onStartWrite()V

    .line 145
    :cond_e
    iget-object v0, p0, Landroid/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 146
    iget-object v0, p0, Landroid/util/AtomicFile;->mLegacyBackupName:Ljava/io/File;

    iget-object v1, p0, Landroid/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-static {v0, v1}, Landroid/util/AtomicFile;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 150
    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_24} :catch_25

    return-object v0

    .line 151
    :catch_25
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v1, p0, Landroid/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 153
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 159
    :try_start_3c
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Landroid/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_43} :catch_44

    return-object v2

    .line 160
    :catch_44
    move-exception v2

    .line 161
    .local v2, "e2":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create new file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 154
    .end local v2    # "e2":Ljava/io/FileNotFoundException;
    :cond_60
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create directory for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/AtomicFile;->mNewName:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AtomicFile["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o truncate()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 218
    .local v0, "fos":Ljava/io/FileOutputStream;
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 219
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_d} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 223
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_f

    .line 222
    :catch_e
    move-exception v0

    .line 224
    :goto_f
    return-void

    .line 220
    :catch_10
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t append "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o write(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/io/FileOutputStream;",
            ">;)V"
        }
    .end annotation

    .line 320
    .local p1, "writeContent":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/io/FileOutputStream;>;"
    const/4 v0, 0x0

    .line 322
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    .line 323
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 324
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_11

    .line 329
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 330
    nop

    .line 331
    return-void

    .line 325
    :catchall_11
    move-exception v1

    .line 326
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_12
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 327
    invoke-static {v1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "out":Ljava/io/FileOutputStream;
    .end local p0    # "this":Landroid/util/AtomicFile;
    .end local p1    # "writeContent":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/io/FileOutputStream;>;"
    throw v2
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1a

    .line 329
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Landroid/util/AtomicFile;
    .restart local p1    # "writeContent":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/io/FileOutputStream;>;"
    :catchall_1a
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 330
    throw v1
.end method
