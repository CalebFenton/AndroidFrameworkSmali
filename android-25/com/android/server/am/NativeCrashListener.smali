.class final Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUGGERD_SOCKET_PATH:Ljava/lang/String; = "/data/system/ndebugsocket"

.field static final MORE_DEBUG:Z = false

.field static final SOCKET_TIMEOUT_MILLIS:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "NativeCrashListener"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@3
    .line 99
    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@5
    .line 98
    return-void
.end method

.method static readExactly(Ljava/io/FileDescriptor;[BII)I
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    const/4 v1, 0x0

    #@1
    .line 183
    .local v1, "totalRead":I
    :goto_0
    if-lez p3, :cond_1

    #@3
    .line 184
    add-int v2, p2, v1

    #@5
    invoke-static {p0, p1, v2, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    #@8
    move-result v0

    #@9
    .line 185
    .local v0, "n":I
    if-gtz v0, :cond_0

    #@b
    .line 189
    const/4 v2, -0x1

    #@c
    return v2

    #@d
    .line 191
    :cond_0
    sub-int/2addr p3, v0

    #@e
    .line 192
    add-int/2addr v1, v0

    #@f
    goto :goto_0

    #@10
    .line 194
    .end local v0    # "n":I
    :cond_1
    return v1
.end method

.method static unpackInt([BI)I
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 173
    aget-byte v4, p0, p1

    #@2
    and-int/lit16 v0, v4, 0xff

    #@4
    .line 174
    .local v0, "b0":I
    add-int/lit8 v4, p1, 0x1

    #@6
    aget-byte v4, p0, v4

    #@8
    and-int/lit16 v1, v4, 0xff

    #@a
    .line 175
    .local v1, "b1":I
    add-int/lit8 v4, p1, 0x2

    #@c
    aget-byte v4, p0, v4

    #@e
    and-int/lit16 v2, v4, 0xff

    #@10
    .line 176
    .local v2, "b2":I
    add-int/lit8 v4, p1, 0x3

    #@12
    aget-byte v4, p0, v4

    #@14
    and-int/lit16 v3, v4, 0xff

    #@16
    .line 177
    .local v3, "b3":I
    shl-int/lit8 v4, v0, 0x18

    #@18
    shl-int/lit8 v5, v1, 0x10

    #@1a
    or-int/2addr v4, v5

    #@1b
    shl-int/lit8 v5, v2, 0x8

    #@1d
    or-int/2addr v4, v5

    #@1e
    or-int/2addr v4, v3

    #@1f
    return v4
.end method


# virtual methods
.method consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .locals 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    const/16 v10, 0x1000

    #@2
    const/16 v12, 0x8

    #@4
    .line 200
    new-array v0, v10, [B

    #@6
    .line 201
    .local v0, "buf":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    #@8
    invoke-direct {v4, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@b
    .line 204
    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    const-wide/16 v10, 0x2710

    #@d
    :try_start_0
    invoke-static {v10, v11}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    #@10
    move-result-object v9

    #@11
    .line 205
    .local v9, "timeout":Landroid/system/StructTimeval;
    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@13
    sget v11, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    #@15
    invoke-static {p1, v10, v11, v9}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    #@18
    .line 206
    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@1a
    sget v11, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    #@1c
    invoke-static {p1, v10, v11, v9}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    #@1f
    .line 209
    const/4 v10, 0x0

    #@20
    const/16 v11, 0x8

    #@22
    invoke-static {p1, v0, v10, v11}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    #@25
    move-result v3

    #@26
    .line 210
    .local v3, "headerBytes":I
    if-eq v3, v12, :cond_0

    #@28
    .line 212
    const-string/jumbo v10, "NativeCrashListener"

    #@2b
    const-string/jumbo v11, "Unable to read from debuggerd"

    #@2e
    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 213
    return-void

    #@32
    .line 216
    :cond_0
    const/4 v10, 0x0

    #@33
    invoke-static {v0, v10}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    #@36
    move-result v5

    #@37
    .line 217
    .local v5, "pid":I
    const/4 v10, 0x4

    #@38
    invoke-static {v0, v10}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    #@3b
    move-result v8

    #@3c
    .line 223
    .local v8, "signal":I
    if-lez v5, :cond_6

    #@3e
    .line 225
    iget-object v10, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@40
    iget-object v11, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@42
    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 226
    :try_start_1
    iget-object v10, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@45
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    #@47
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object v6

    #@4b
    check-cast v6, Lcom/android/server/am/ProcessRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    .local v6, "pr":Lcom/android/server/am/ProcessRecord;
    :try_start_2
    monitor-exit v11

    #@4e
    .line 228
    if-eqz v6, :cond_5

    #@50
    .line 230
    iget-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@52
    if-eqz v10, :cond_3

    #@54
    .line 234
    return-void

    #@55
    .line 225
    .end local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v10

    #@56
    monitor-exit v11

    #@57
    throw v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@58
    .line 279
    .end local v3    # "headerBytes":I
    .end local v5    # "pid":I
    .end local v8    # "signal":I
    .end local v9    # "timeout":Landroid/system/StructTimeval;
    :catch_0
    move-exception v2

    #@59
    .line 280
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "NativeCrashListener"

    #@5c
    const-string/jumbo v11, "Exception dealing with report"

    #@5f
    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@62
    .line 198
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    #@63
    .line 252
    .local v1, "bytes":I
    .restart local v3    # "headerBytes":I
    .restart local v5    # "pid":I
    .restart local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "signal":I
    .restart local v9    # "timeout":Landroid/system/StructTimeval;
    :cond_1
    const/4 v10, 0x0

    #@64
    :try_start_3
    invoke-virtual {v4, v0, v10, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@67
    .line 254
    :cond_2
    if-lez v1, :cond_4

    #@69
    .line 240
    .end local v1    # "bytes":I
    :cond_3
    array-length v10, v0

    #@6a
    const/4 v11, 0x0

    #@6b
    invoke-static {p1, v0, v11, v10}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    #@6e
    move-result v1

    #@6f
    .line 241
    .restart local v1    # "bytes":I
    if-lez v1, :cond_2

    #@71
    .line 247
    add-int/lit8 v10, v1, -0x1

    #@73
    aget-byte v10, v0, v10

    #@75
    if-nez v10, :cond_1

    #@77
    .line 248
    add-int/lit8 v10, v1, -0x1

    #@79
    const/4 v11, 0x0

    #@7a
    invoke-virtual {v4, v0, v11, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@7d
    .line 263
    :cond_4
    iget-object v11, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@7f
    monitor-enter v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@80
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@83
    .line 264
    const/4 v10, 0x1

    #@84
    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->crashing:Z

    #@86
    .line 265
    const/4 v10, 0x1

    #@87
    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@89
    :try_start_5
    monitor-exit v11

    #@8a
    .line 263
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@8d
    .line 271
    new-instance v7, Ljava/lang/String;

    #@8f
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@92
    move-result-object v10

    #@93
    const-string/jumbo v11, "UTF-8"

    #@96
    invoke-direct {v7, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@99
    .line 272
    .local v7, "reportString":Ljava/lang/String;
    new-instance v10, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    #@9b
    invoke-direct {v10, p0, v6, v8, v7}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    #@9e
    invoke-virtual {v10}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->start()V

    #@a1
    goto :goto_0

    #@a2
    .line 263
    .end local v7    # "reportString":Ljava/lang/String;
    :catchall_1
    move-exception v10

    #@a3
    monitor-exit v11

    #@a4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@a7
    throw v10

    #@a8
    .line 274
    .end local v1    # "bytes":I
    :cond_5
    const-string/jumbo v10, "NativeCrashListener"

    #@ab
    new-instance v11, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v12, "Couldn\'t find ProcessRecord for pid "

    #@b3
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v11

    #@b7
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v11

    #@bb
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v11

    #@bf
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c2
    goto :goto_0

    #@c3
    .line 277
    .end local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_6
    const-string/jumbo v10, "NativeCrashListener"

    #@c6
    const-string/jumbo v11, "Bogus pid!"

    #@c9
    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    #@cc
    goto :goto_0
.end method

.method public run()V
    .locals 11

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 104
    new-array v0, v8, [B

    #@3
    .line 112
    .local v0, "ackSignal":[B
    new-instance v7, Ljava/io/File;

    #@5
    const-string/jumbo v8, "/data/system/ndebugsocket"

    #@8
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@b
    .line 113
    .local v7, "socketFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    #@e
    move-result v8

    #@f
    if-eqz v8, :cond_0

    #@11
    .line 114
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    #@14
    .line 119
    :cond_0
    :try_start_0
    sget v8, Landroid/system/OsConstants;->AF_UNIX:I

    #@16
    sget v9, Landroid/system/OsConstants;->SOCK_STREAM:I

    #@18
    const/4 v10, 0x0

    #@19
    invoke-static {v8, v9, v10}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    #@1c
    move-result-object v5

    #@1d
    .line 121
    .local v5, "serverFd":Ljava/io/FileDescriptor;
    const-string/jumbo v8, "/data/system/ndebugsocket"

    #@20
    .line 120
    invoke-static {v8}, Landroid/system/UnixSocketAddress;->createFileSystem(Ljava/lang/String;)Landroid/system/UnixSocketAddress;

    #@23
    move-result-object v6

    #@24
    .line 122
    .local v6, "sockAddr":Landroid/system/UnixSocketAddress;
    invoke-static {v5, v6}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    #@27
    .line 123
    const/4 v8, 0x1

    #@28
    invoke-static {v5, v8}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    #@2b
    .line 126
    :cond_1
    :goto_0
    const/4 v4, 0x0

    #@2c
    .line 129
    .local v4, "peerFd":Ljava/io/FileDescriptor;
    const/4 v8, 0x0

    #@2d
    :try_start_1
    invoke-static {v5, v8}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    #@30
    move-result-object v4

    #@31
    .line 131
    .local v4, "peerFd":Ljava/io/FileDescriptor;
    if-eqz v4, :cond_2

    #@33
    .line 134
    sget v8, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@35
    sget v9, Landroid/system/OsConstants;->SO_PEERCRED:I

    #@37
    invoke-static {v4, v8, v9}, Landroid/system/Os;->getsockoptUcred(Ljava/io/FileDescriptor;II)Landroid/system/StructUcred;

    #@3a
    move-result-object v1

    #@3b
    .line 135
    .local v1, "credentials":Landroid/system/StructUcred;
    iget v8, v1, Landroid/system/StructUcred;->uid:I

    #@3d
    if-nez v8, :cond_2

    #@3f
    .line 138
    invoke-virtual {p0, v4}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    .line 146
    .end local v1    # "credentials":Landroid/system/StructUcred;
    :cond_2
    if-eqz v4, :cond_1

    #@44
    .line 148
    const/4 v8, 0x0

    #@45
    const/4 v9, 0x1

    #@46
    :try_start_2
    invoke-static {v4, v0, v8, v9}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@49
    .line 156
    :goto_1
    :try_start_3
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    #@4c
    goto :goto_0

    #@4d
    .line 157
    :catch_0
    move-exception v2

    #@4e
    .local v2, "e":Landroid/system/ErrnoException;
    goto :goto_0

    #@4f
    .line 149
    .end local v2    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v3

    #@50
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_1

    #@51
    .line 141
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "peerFd":Ljava/io/FileDescriptor;
    :catch_2
    move-exception v3

    #@52
    .line 142
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v8, "NativeCrashListener"

    #@55
    const-string/jumbo v9, "Error handling connection"

    #@58
    invoke-static {v8, v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@5b
    .line 146
    if-eqz v4, :cond_1

    #@5d
    .line 148
    const/4 v8, 0x0

    #@5e
    const/4 v9, 0x1

    #@5f
    :try_start_5
    invoke-static {v4, v0, v8, v9}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    #@62
    .line 156
    :goto_2
    :try_start_6
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    #@65
    goto :goto_0

    #@66
    .line 157
    :catch_3
    move-exception v2

    #@67
    .restart local v2    # "e":Landroid/system/ErrnoException;
    goto :goto_0

    #@68
    .line 149
    .end local v2    # "e":Landroid/system/ErrnoException;
    :catch_4
    move-exception v3

    #@69
    goto :goto_2

    #@6a
    .line 143
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    #@6b
    .line 146
    if-eqz v4, :cond_3

    #@6d
    .line 148
    const/4 v9, 0x0

    #@6e
    const/4 v10, 0x1

    #@6f
    :try_start_7
    invoke-static {v4, v0, v9, v10}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    #@72
    .line 156
    :goto_3
    :try_start_8
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    #@75
    .line 143
    :cond_3
    :goto_4
    :try_start_9
    throw v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    #@76
    .line 165
    .end local v5    # "serverFd":Ljava/io/FileDescriptor;
    .end local v6    # "sockAddr":Landroid/system/UnixSocketAddress;
    :catch_5
    move-exception v3

    #@77
    .line 166
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "NativeCrashListener"

    #@7a
    const-string/jumbo v9, "Unable to init native debug socket!"

    #@7d
    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@80
    .line 103
    return-void

    #@81
    .line 149
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "serverFd":Ljava/io/FileDescriptor;
    .restart local v6    # "sockAddr":Landroid/system/UnixSocketAddress;
    :catch_6
    move-exception v3

    #@82
    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_3

    #@83
    .line 157
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v2

    #@84
    .restart local v2    # "e":Landroid/system/ErrnoException;
    goto :goto_4
.end method
