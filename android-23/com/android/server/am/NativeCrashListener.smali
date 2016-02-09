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

.field static final SOCKET_TIMEOUT_MILLIS:J = 0x7d0L

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
    const-wide/16 v10, 0x7d0

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
    .line 264
    const/4 v10, 0x1

    #@81
    :try_start_4
    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->crashing:Z

    #@83
    .line 265
    const/4 v10, 0x1

    #@84
    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@86
    :try_start_5
    monitor-exit v11

    #@87
    .line 271
    new-instance v7, Ljava/lang/String;

    #@89
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@8c
    move-result-object v10

    #@8d
    const-string/jumbo v11, "UTF-8"

    #@90
    invoke-direct {v7, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@93
    .line 272
    .local v7, "reportString":Ljava/lang/String;
    new-instance v10, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    #@95
    invoke-direct {v10, p0, v6, v8, v7}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    #@98
    invoke-virtual {v10}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->start()V

    #@9b
    goto :goto_0

    #@9c
    .line 263
    .end local v7    # "reportString":Ljava/lang/String;
    :catchall_1
    move-exception v10

    #@9d
    monitor-exit v11

    #@9e
    throw v10

    #@9f
    .line 274
    .end local v1    # "bytes":I
    :cond_5
    const-string/jumbo v10, "NativeCrashListener"

    #@a2
    new-instance v11, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v12, "Couldn\'t find ProcessRecord for pid "

    #@aa
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v11

    #@ae
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v11

    #@b2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v11

    #@b6
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b9
    goto :goto_0

    #@ba
    .line 277
    .end local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_6
    const-string/jumbo v10, "NativeCrashListener"

    #@bd
    const-string/jumbo v11, "Bogus pid!"

    #@c0
    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    #@c3
    goto :goto_0
.end method

.method public run()V
    .locals 12

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 104
    new-array v0, v9, [B

    #@3
    .line 112
    .local v0, "ackSignal":[B
    new-instance v8, Ljava/io/File;

    #@5
    const-string/jumbo v9, "/data/system/ndebugsocket"

    #@8
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@b
    .line 113
    .local v8, "socketFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    #@e
    move-result v9

    #@f
    if-eqz v9, :cond_0

    #@11
    .line 114
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    #@14
    .line 119
    :cond_0
    :try_start_0
    sget v9, Landroid/system/OsConstants;->AF_UNIX:I

    #@16
    sget v10, Landroid/system/OsConstants;->SOCK_STREAM:I

    #@18
    const/4 v11, 0x0

    #@19
    invoke-static {v9, v10, v11}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    #@1c
    move-result-object v6

    #@1d
    .line 120
    .local v6, "serverFd":Ljava/io/FileDescriptor;
    new-instance v7, Ljava/net/InetUnixAddress;

    #@1f
    const-string/jumbo v9, "/data/system/ndebugsocket"

    #@22
    invoke-direct {v7, v9}, Ljava/net/InetUnixAddress;-><init>(Ljava/lang/String;)V

    #@25
    .line 121
    .local v7, "sockAddr":Ljava/net/InetUnixAddress;
    const/4 v9, 0x0

    #@26
    invoke-static {v6, v7, v9}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@29
    .line 122
    const/4 v9, 0x1

    #@2a
    invoke-static {v6, v9}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V

    #@2d
    .line 125
    :cond_1
    :goto_0
    new-instance v4, Ljava/net/InetSocketAddress;

    #@2f
    invoke-direct {v4}, Ljava/net/InetSocketAddress;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    #@32
    .line 126
    .local v4, "peer":Ljava/net/InetSocketAddress;
    const/4 v5, 0x0

    #@33
    .line 129
    .local v5, "peerFd":Ljava/io/FileDescriptor;
    :try_start_1
    invoke-static {v6, v4}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    #@36
    move-result-object v5

    #@37
    .line 131
    .local v5, "peerFd":Ljava/io/FileDescriptor;
    if-eqz v5, :cond_2

    #@39
    .line 134
    sget v9, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@3b
    sget v10, Landroid/system/OsConstants;->SO_PEERCRED:I

    #@3d
    invoke-static {v5, v9, v10}, Landroid/system/Os;->getsockoptUcred(Ljava/io/FileDescriptor;II)Landroid/system/StructUcred;

    #@40
    move-result-object v1

    #@41
    .line 135
    .local v1, "credentials":Landroid/system/StructUcred;
    iget v9, v1, Landroid/system/StructUcred;->uid:I

    #@43
    if-nez v9, :cond_2

    #@45
    .line 138
    invoke-virtual {p0, v5}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    .line 146
    .end local v1    # "credentials":Landroid/system/StructUcred;
    :cond_2
    if-eqz v5, :cond_1

    #@4a
    .line 148
    const/4 v9, 0x0

    #@4b
    const/4 v10, 0x1

    #@4c
    :try_start_2
    invoke-static {v5, v0, v9, v10}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@4f
    .line 156
    :goto_1
    :try_start_3
    invoke-static {v5}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    #@52
    goto :goto_0

    #@53
    .line 157
    :catch_0
    move-exception v2

    #@54
    .local v2, "e":Landroid/system/ErrnoException;
    goto :goto_0

    #@55
    .line 149
    .end local v2    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v3

    #@56
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_1

    #@57
    .line 141
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "peerFd":Ljava/io/FileDescriptor;
    :catch_2
    move-exception v3

    #@58
    .line 142
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v9, "NativeCrashListener"

    #@5b
    const-string/jumbo v10, "Error handling connection"

    #@5e
    invoke-static {v9, v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@61
    .line 146
    if-eqz v5, :cond_1

    #@63
    .line 148
    const/4 v9, 0x0

    #@64
    const/4 v10, 0x1

    #@65
    :try_start_5
    invoke-static {v5, v0, v9, v10}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    #@68
    .line 156
    :goto_2
    :try_start_6
    invoke-static {v5}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    #@6b
    goto :goto_0

    #@6c
    .line 157
    :catch_3
    move-exception v2

    #@6d
    .restart local v2    # "e":Landroid/system/ErrnoException;
    goto :goto_0

    #@6e
    .line 149
    .end local v2    # "e":Landroid/system/ErrnoException;
    :catch_4
    move-exception v3

    #@6f
    goto :goto_2

    #@70
    .line 143
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    #@71
    .line 146
    if-eqz v5, :cond_3

    #@73
    .line 148
    const/4 v10, 0x0

    #@74
    const/4 v11, 0x1

    #@75
    :try_start_7
    invoke-static {v5, v0, v10, v11}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    #@78
    .line 156
    :goto_3
    :try_start_8
    invoke-static {v5}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    #@7b
    .line 143
    :cond_3
    :goto_4
    :try_start_9
    throw v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    #@7c
    .line 165
    .end local v4    # "peer":Ljava/net/InetSocketAddress;
    .end local v6    # "serverFd":Ljava/io/FileDescriptor;
    .end local v7    # "sockAddr":Ljava/net/InetUnixAddress;
    :catch_5
    move-exception v3

    #@7d
    .line 166
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "NativeCrashListener"

    #@80
    const-string/jumbo v10, "Unable to init native debug socket!"

    #@83
    invoke-static {v9, v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@86
    .line 103
    return-void

    #@87
    .line 149
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "peer":Ljava/net/InetSocketAddress;
    .restart local v6    # "serverFd":Ljava/io/FileDescriptor;
    .restart local v7    # "sockAddr":Ljava/net/InetUnixAddress;
    :catch_6
    move-exception v3

    #@88
    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_3

    #@89
    .line 157
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v2

    #@8a
    .restart local v2    # "e":Landroid/system/ErrnoException;
    goto :goto_4
.end method
