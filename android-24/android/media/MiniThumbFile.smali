.class public Landroid/media/MiniThumbFile;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# static fields
.field public static final BYTES_PER_MINTHUMB:I = 0x2710

.field private static final HEADER_SIZE:I = 0xd

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MiniThumbFile"

.field private static final sThumbFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MiniThumbFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private mMiniThumbFile:Ljava/io/RandomAccessFile;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 55
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    .line 54
    sput-object v0, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    #@7
    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 131
    iput-object p1, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    #@5
    .line 132
    const/16 v0, 0x2710

    #@7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@d
    .line 130
    return-void
.end method

.method public static declared-synchronized instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const-class v3, Landroid/media/MiniThumbFile;

    #@2
    monitor-enter v3

    #@3
    .line 69
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@6
    move-result-object v2

    #@7
    const/4 v4, 0x1

    #@8
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/lang/String;

    #@e
    .line 70
    .local v1, "type":Ljava/lang/String;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    #@10
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/media/MiniThumbFile;

    #@16
    .line 72
    .local v0, "file":Landroid/media/MiniThumbFile;
    if-nez v0, :cond_0

    #@18
    .line 73
    new-instance v0, Landroid/media/MiniThumbFile;

    #@1a
    .line 74
    .end local v0    # "file":Landroid/media/MiniThumbFile;
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "content://media/external/"

    #@22
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    const-string/jumbo v4, "/media"

    #@2d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@38
    move-result-object v2

    #@39
    .line 73
    invoke-direct {v0, v2}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    #@3c
    .line 75
    .restart local v0    # "file":Landroid/media/MiniThumbFile;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    #@3e
    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    :cond_0
    monitor-exit v3

    #@42
    .line 78
    return-object v0

    #@43
    .end local v0    # "file":Landroid/media/MiniThumbFile;
    .end local v1    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@44
    monitor-exit v3

    #@45
    throw v2
.end method

.method private miniThumbDataFile()Ljava/io/RandomAccessFile;
    .locals 8

    #@0
    .prologue
    .line 101
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    #@2
    if-nez v5, :cond_1

    #@4
    .line 102
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->removeOldFile()V

    #@7
    .line 103
    const/4 v5, 0x3

    #@8
    invoke-direct {p0, v5}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    .line 104
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    #@e
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@11
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@14
    move-result-object v0

    #@15
    .line 105
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@18
    move-result v5

    #@19
    if-nez v5, :cond_0

    #@1b
    .line 106
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@1e
    move-result v5

    #@1f
    if-nez v5, :cond_0

    #@21
    .line 107
    const-string/jumbo v5, "MiniThumbFile"

    #@24
    new-instance v6, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v7, "Unable to create .thumbnails directory "

    #@2c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v6

    #@30
    .line 108
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    #@33
    move-result-object v7

    #@34
    .line 107
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v6

    #@3c
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 111
    :cond_0
    new-instance v3, Ljava/io/File;

    #@41
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@44
    .line 113
    .local v3, "f":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    #@46
    const-string/jumbo v6, "rw"

    #@49
    invoke-direct {v5, v3, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@4c
    iput-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 123
    :goto_0
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    #@50
    if-eqz v5, :cond_1

    #@52
    .line 124
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    #@54
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    #@57
    move-result-object v5

    #@58
    iput-object v5, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    #@5a
    .line 127
    .end local v0    # "directory":Ljava/io/File;
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    #@5c
    return-object v5

    #@5d
    .line 114
    .restart local v0    # "directory":Ljava/io/File;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@5e
    .line 118
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Ljava/io/RandomAccessFile;

    #@60
    const-string/jumbo v6, "r"

    #@63
    invoke-direct {v5, v3, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@66
    iput-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@68
    goto :goto_0

    #@69
    .line 119
    :catch_1
    move-exception v2

    #@6a
    .local v2, "ex2":Ljava/io/IOException;
    goto :goto_0
.end method

.method private randomAccessFilePath(I)Ljava/lang/String;
    .locals 3
    .param p1, "version"    # I

    #@0
    .prologue
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    .line 84
    const-string/jumbo v2, "/DCIM/.thumbnails"

    #@14
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 85
    .local v0, "directoryName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, "/.thumbdata"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    const-string/jumbo v2, "-"

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    iget-object v2, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    #@39
    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    #@3c
    move-result v2

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    return-object v1
.end method

.method private removeOldFile()V
    .locals 4

    #@0
    .prologue
    .line 89
    const/4 v3, 0x2

    #@1
    invoke-direct {p0, v3}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 90
    .local v2, "oldPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    #@7
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@a
    .line 91
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 93
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 88
    :cond_0
    :goto_0
    return-void

    #@14
    .line 94
    :catch_0
    move-exception v0

    #@15
    .local v0, "ex":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public static declared-synchronized reset()V
    .locals 4

    #@0
    .prologue
    const-class v3, Landroid/media/MiniThumbFile;

    #@2
    monitor-enter v3

    #@3
    .line 62
    :try_start_0
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    #@5
    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "file$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/media/MiniThumbFile;

    #@19
    .line 63
    .local v0, "file":Landroid/media/MiniThumbFile;
    invoke-virtual {v0}, Landroid/media/MiniThumbFile;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .end local v0    # "file":Landroid/media/MiniThumbFile;
    :catchall_0
    move-exception v2

    #@1e
    monitor-exit v3

    #@1f
    throw v2

    #@20
    .line 65
    :cond_0
    :try_start_1
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    #@22
    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    monitor-exit v3

    #@26
    .line 61
    return-void
.end method


# virtual methods
.method public declared-synchronized deactivate()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 136
    :try_start_0
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 138
    :try_start_1
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    #@7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    #@a
    .line 139
    const/4 v1, 0x0

    #@b
    iput-object v1, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    :cond_0
    :goto_0
    monitor-exit p0

    #@e
    .line 135
    return-void

    #@f
    :catchall_0
    move-exception v1

    #@10
    monitor-exit p0

    #@11
    throw v1

    #@12
    .line 140
    :catch_0
    move-exception v0

    #@13
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0
.end method

.method public declared-synchronized getMagic(J)J
    .locals 13
    .param p1, "id"    # J

    #@0
    .prologue
    const/16 v11, 0x9

    #@2
    const/4 v10, 0x1

    #@3
    monitor-enter p0

    #@4
    .line 152
    :try_start_0
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    move-result-object v9

    #@8
    .line 153
    .local v9, "r":Ljava/io/RandomAccessFile;
    if-eqz v9, :cond_2

    #@a
    .line 154
    const-wide/16 v4, 0x2710

    #@c
    mul-long v2, p1, v4

    #@e
    .line 155
    .local v2, "pos":J
    const/4 v8, 0x0

    #@f
    .line 157
    .local v8, "lock":Ljava/nio/channels/FileLock;
    :try_start_1
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@11
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@14
    .line 158
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@16
    const/16 v4, 0x9

    #@18
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@1b
    .line 160
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    #@1d
    const-wide/16 v4, 0x9

    #@1f
    const/4 v6, 0x1

    #@20
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    #@23
    move-result-object v8

    #@24
    .line 163
    .local v8, "lock":Ljava/nio/channels/FileLock;
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    #@26
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@28
    invoke-virtual {v1, v4, v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    #@2b
    move-result v1

    #@2c
    if-ne v1, v11, :cond_1

    #@2e
    .line 164
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@30
    const/4 v4, 0x0

    #@31
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@34
    .line 165
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@36
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    #@39
    move-result v1

    #@3a
    if-ne v1, v10, :cond_1

    #@3c
    .line 166
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@3e
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    move-result-wide v4

    #@42
    .line 177
    if-eqz v8, :cond_0

    #@44
    :try_start_2
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@47
    :cond_0
    :goto_0
    monitor-exit p0

    #@48
    .line 166
    return-wide v4

    #@49
    .line 179
    :catch_0
    move-exception v0

    #@4a
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0

    #@4b
    .line 177
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_1
    if-eqz v8, :cond_2

    #@4d
    :try_start_3
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@50
    .line 184
    .end local v2    # "pos":J
    .end local v8    # "lock":Ljava/nio/channels/FileLock;
    :cond_2
    :goto_1
    const-wide/16 v4, 0x0

    #@52
    monitor-exit p0

    #@53
    return-wide v4

    #@54
    .line 179
    .restart local v2    # "pos":J
    .restart local v8    # "lock":Ljava/nio/channels/FileLock;
    :catch_1
    move-exception v0

    #@55
    .restart local v0    # "ex":Ljava/io/IOException;
    goto :goto_1

    #@56
    .line 171
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v8    # "lock":Ljava/nio/channels/FileLock;
    :catch_2
    move-exception v7

    #@57
    .line 173
    .local v7, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    const-string/jumbo v1, "MiniThumbFile"

    #@5a
    new-instance v4, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v5, "Got exception when reading magic, id = "

    #@62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    .line 174
    const-string/jumbo v5, ", disk full or mount read-only? "

    #@6d
    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    .line 174
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getClass()Ljava/lang/Class;

    #@74
    move-result-object v5

    #@75
    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v4

    #@7d
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@80
    .line 177
    if-eqz v8, :cond_2

    #@82
    :try_start_5
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@85
    goto :goto_1

    #@86
    .line 179
    :catch_3
    move-exception v0

    #@87
    .restart local v0    # "ex":Ljava/io/IOException;
    goto :goto_1

    #@88
    .line 169
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v0

    #@89
    .line 170
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v1, "MiniThumbFile"

    #@8c
    const-string/jumbo v4, "Got exception checking file magic: "

    #@8f
    invoke-static {v1, v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@92
    .line 177
    if-eqz v8, :cond_2

    #@94
    :try_start_7
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@97
    goto :goto_1

    #@98
    .line 179
    :catch_5
    move-exception v0

    #@99
    goto :goto_1

    #@9a
    .line 175
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@9b
    .line 177
    if-eqz v8, :cond_3

    #@9d
    :try_start_8
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@a0
    .line 175
    :cond_3
    :goto_2
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@a1
    .end local v2    # "pos":J
    .end local v9    # "r":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v1

    #@a2
    monitor-exit p0

    #@a3
    throw v1

    #@a4
    .line 179
    .restart local v2    # "pos":J
    .restart local v9    # "r":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v0

    #@a5
    .restart local v0    # "ex":Ljava/io/IOException;
    goto :goto_2
.end method

.method public declared-synchronized getMiniThumbFromFile(J[B)[B
    .locals 17
    .param p1, "id"    # J
    .param p3, "data"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 236
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@4
    move-result-object v13

    #@5
    .line 237
    .local v13, "r":Ljava/io/RandomAccessFile;
    if-nez v13, :cond_0

    #@7
    const/4 v3, 0x0

    #@8
    monitor-exit p0

    #@9
    return-object v3

    #@a
    .line 239
    :cond_0
    const-wide/16 v6, 0x2710

    #@c
    mul-long v4, p1, v6

    #@e
    .line 240
    .local v4, "pos":J
    const/4 v12, 0x0

    #@f
    .line 242
    .local v12, "lock":Ljava/nio/channels/FileLock;
    :try_start_1
    move-object/from16 v0, p0

    #@11
    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@13
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@16
    .line 243
    move-object/from16 v0, p0

    #@18
    iget-object v3, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    #@1a
    const-wide/16 v6, 0x2710

    #@1c
    const/4 v8, 0x1

    #@1d
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    #@20
    move-result-object v12

    #@21
    .line 244
    .local v12, "lock":Ljava/nio/channels/FileLock;
    move-object/from16 v0, p0

    #@23
    iget-object v3, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    #@25
    move-object/from16 v0, p0

    #@27
    iget-object v6, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@29
    invoke-virtual {v3, v6, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    #@2c
    move-result v16

    #@2d
    .line 245
    .local v16, "size":I
    const/16 v3, 0xd

    #@2f
    move/from16 v0, v16

    #@31
    if-le v0, v3, :cond_2

    #@33
    .line 246
    move-object/from16 v0, p0

    #@35
    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@37
    const/4 v6, 0x0

    #@38
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@3b
    .line 247
    move-object/from16 v0, p0

    #@3d
    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@3f
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    #@42
    move-result v10

    #@43
    .line 248
    .local v10, "flag":B
    move-object/from16 v0, p0

    #@45
    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@47
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    #@4a
    move-result-wide v14

    #@4b
    .line 249
    .local v14, "magic":J
    move-object/from16 v0, p0

    #@4d
    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@4f
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    #@52
    move-result v11

    #@53
    .line 251
    .local v11, "length":I
    add-int/lit8 v3, v11, 0xd

    #@55
    move/from16 v0, v16

    #@57
    if-lt v0, v3, :cond_2

    #@59
    if-eqz v11, :cond_2

    #@5b
    const-wide/16 v6, 0x0

    #@5d
    cmp-long v3, v14, v6

    #@5f
    if-eqz v3, :cond_2

    #@61
    const/4 v3, 0x1

    #@62
    if-ne v10, v3, :cond_2

    #@64
    .line 252
    move-object/from16 v0, p3

    #@66
    array-length v3, v0

    #@67
    if-lt v3, v11, :cond_2

    #@69
    .line 253
    move-object/from16 v0, p0

    #@6b
    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@6d
    const/4 v6, 0x0

    #@6e
    move-object/from16 v0, p3

    #@70
    invoke-virtual {v3, v0, v6, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@73
    .line 265
    if-eqz v12, :cond_1

    #@75
    :try_start_2
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@78
    :cond_1
    :goto_0
    monitor-exit p0

    #@79
    .line 254
    return-object p3

    #@7a
    .line 267
    :catch_0
    move-exception v2

    #@7b
    .local v2, "ex":Ljava/io/IOException;
    goto :goto_0

    #@7c
    .line 265
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v10    # "flag":B
    .end local v11    # "length":I
    .end local v14    # "magic":J
    :cond_2
    if-eqz v12, :cond_3

    #@7e
    :try_start_3
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@81
    .line 271
    .end local v12    # "lock":Ljava/nio/channels/FileLock;
    .end local v16    # "size":I
    :cond_3
    :goto_1
    const/4 v3, 0x0

    #@82
    monitor-exit p0

    #@83
    return-object v3

    #@84
    .line 267
    .restart local v12    # "lock":Ljava/nio/channels/FileLock;
    .restart local v16    # "size":I
    :catch_1
    move-exception v2

    #@85
    .restart local v2    # "ex":Ljava/io/IOException;
    goto :goto_1

    #@86
    .line 259
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v12    # "lock":Ljava/nio/channels/FileLock;
    .end local v16    # "size":I
    :catch_2
    move-exception v9

    #@87
    .line 261
    .local v9, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    const-string/jumbo v3, "MiniThumbFile"

    #@8a
    new-instance v6, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v7, "Got exception when reading thumbnail, id = "

    #@92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v6

    #@96
    move-wide/from16 v0, p1

    #@98
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v6

    #@9c
    .line 262
    const-string/jumbo v7, ", disk full or mount read-only? "

    #@9f
    .line 261
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v6

    #@a3
    .line 262
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->getClass()Ljava/lang/Class;

    #@a6
    move-result-object v7

    #@a7
    .line 261
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v6

    #@ab
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v6

    #@af
    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b2
    .line 265
    if-eqz v12, :cond_3

    #@b4
    :try_start_5
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@b7
    goto :goto_1

    #@b8
    .line 267
    :catch_3
    move-exception v2

    #@b9
    .restart local v2    # "ex":Ljava/io/IOException;
    goto :goto_1

    #@ba
    .line 257
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v9    # "ex":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v2

    #@bb
    .line 258
    .restart local v2    # "ex":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v3, "MiniThumbFile"

    #@be
    new-instance v6, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v7, "got exception when reading thumbnail id="

    #@c6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v6

    #@ca
    move-wide/from16 v0, p1

    #@cc
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v6

    #@d0
    const-string/jumbo v7, ", exception: "

    #@d3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v6

    #@d7
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v6

    #@db
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@de
    move-result-object v6

    #@df
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@e2
    .line 265
    if-eqz v12, :cond_3

    #@e4
    :try_start_7
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@e7
    goto :goto_1

    #@e8
    .line 267
    :catch_5
    move-exception v2

    #@e9
    goto :goto_1

    #@ea
    .line 263
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@eb
    .line 265
    if-eqz v12, :cond_4

    #@ed
    :try_start_8
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@f0
    .line 263
    :cond_4
    :goto_2
    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@f1
    .end local v4    # "pos":J
    .end local v13    # "r":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v3

    #@f2
    monitor-exit p0

    #@f3
    throw v3

    #@f4
    .line 267
    .restart local v4    # "pos":J
    .restart local v13    # "r":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v2

    #@f5
    .restart local v2    # "ex":Ljava/io/IOException;
    goto :goto_2
.end method

.method public declared-synchronized saveMiniThumbToFile([BJJ)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "id"    # J
    .param p4, "magic"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, 0x2710

    #@2
    monitor-enter p0

    #@3
    .line 189
    :try_start_0
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    move-result-object v9

    #@7
    .line 190
    .local v9, "r":Ljava/io/RandomAccessFile;
    if-nez v9, :cond_0

    #@9
    monitor-exit p0

    #@a
    return-void

    #@b
    .line 192
    :cond_0
    mul-long v2, p2, v4

    #@d
    .line 193
    .local v2, "pos":J
    const/4 v8, 0x0

    #@e
    .line 195
    .local v8, "lock":Ljava/nio/channels/FileLock;
    if-eqz p1, :cond_2

    #@10
    .line 196
    :try_start_1
    array-length v1, p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    const/16 v4, 0x2703

    #@13
    if-le v1, v4, :cond_1

    #@15
    monitor-exit p0

    #@16
    .line 198
    return-void

    #@17
    .line 200
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@19
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@1c
    .line 201
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@1e
    const/4 v4, 0x1

    #@1f
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@22
    .line 202
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@24
    invoke-virtual {v1, p4, p5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    #@27
    .line 203
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@29
    array-length v4, p1

    #@2a
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@2d
    .line 204
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@2f
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@32
    .line 205
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@34
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@37
    .line 207
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    #@39
    const-wide/16 v4, 0x2710

    #@3b
    const/4 v6, 0x0

    #@3c
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    #@3f
    move-result-object v8

    #@40
    .line 208
    .local v8, "lock":Ljava/nio/channels/FileLock;
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    #@42
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    #@44
    invoke-virtual {v1, v4, v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    .line 220
    .end local v8    # "lock":Ljava/nio/channels/FileLock;
    :cond_2
    if-eqz v8, :cond_3

    #@49
    :try_start_3
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@4c
    :cond_3
    :goto_0
    monitor-exit p0

    #@4d
    .line 188
    return-void

    #@4e
    .line 222
    :catch_0
    move-exception v0

    #@4f
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0

    #@50
    .line 214
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v7

    #@51
    .line 216
    .local v7, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    const-string/jumbo v1, "MiniThumbFile"

    #@54
    new-instance v4, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v5, "couldn\'t save mini thumbnail data for "

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    .line 217
    const-string/jumbo v5, "; disk full or mount read-only? "

    #@67
    .line 216
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    .line 217
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getClass()Ljava/lang/Class;

    #@6e
    move-result-object v5

    #@6f
    .line 216
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v4

    #@77
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@7a
    .line 220
    if-eqz v8, :cond_3

    #@7c
    :try_start_5
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@7f
    goto :goto_0

    #@80
    .line 222
    :catch_2
    move-exception v0

    #@81
    .restart local v0    # "ex":Ljava/io/IOException;
    goto :goto_0

    #@82
    .line 210
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    #@83
    .line 211
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v1, "MiniThumbFile"

    #@86
    new-instance v4, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v5, "couldn\'t save mini thumbnail data for "

    #@8e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v4

    #@92
    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@95
    move-result-object v4

    #@96
    .line 212
    const-string/jumbo v5, "; "

    #@99
    .line 211
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v4

    #@9d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v4

    #@a1
    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a4
    .line 213
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@a5
    .line 218
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@a6
    .line 220
    if-eqz v8, :cond_4

    #@a8
    :try_start_7
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@ab
    .line 218
    :cond_4
    :goto_1
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@ac
    .end local v2    # "pos":J
    .end local v9    # "r":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v1

    #@ad
    monitor-exit p0

    #@ae
    throw v1

    #@af
    .line 222
    .restart local v2    # "pos":J
    .restart local v9    # "r":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    #@b0
    .restart local v0    # "ex":Ljava/io/IOException;
    goto :goto_1
.end method
