.class public final Lcom/android/internal/os/TransferPipe;
.super Ljava/lang/Object;
.source "TransferPipe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/TransferPipe$Caller;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEFAULT_TIMEOUT:J = 0x1388L

.field static final TAG:Ljava/lang/String; = "TransferPipe"


# instance fields
.field mBufferPrefix:Ljava/lang/String;

.field mComplete:Z

.field mEndTime:J

.field mFailure:Ljava/lang/String;

.field final mFds:[Landroid/os/ParcelFileDescriptor;

.field mOutFd:Ljava/io/FileDescriptor;

.field final mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    new-instance v0, Ljava/lang/Thread;

    #@5
    const-string/jumbo v1, "TransferPipe"

    #@8
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@b
    iput-object v0, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    #@d
    .line 58
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    #@13
    .line 56
    return-void
.end method

.method static go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p0, "caller"    # Lcom/android/internal/os/TransferPipe$Caller;
    .param p1, "iface"    # Landroid/os/IInterface;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    const-wide/16 v6, 0x1388

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    invoke-static/range {v1 .. v7}, Lcom/android/internal/os/TransferPipe;->go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V

    #@a
    .line 74
    return-void
.end method

.method static go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 3
    .param p0, "caller"    # Lcom/android/internal/os/TransferPipe$Caller;
    .param p1, "iface"    # Landroid/os/IInterface;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v2

    #@4
    instance-of v2, v2, Landroid/os/Binder;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 83
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/os/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 86
    :goto_0
    return-void

    #@c
    .line 84
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@e
    .line 89
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Lcom/android/internal/os/TransferPipe;

    #@10
    invoke-direct {v1}, Lcom/android/internal/os/TransferPipe;-><init>()V

    #@13
    .line 91
    .local v1, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@1a
    move-result-object v2

    #@1b
    invoke-interface {p0, p1, v2, p3, p4}, Lcom/android/internal/os/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    #@1e
    .line 92
    invoke-virtual {v1, p2, p5, p6}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    .line 94
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    #@24
    .line 79
    return-void

    #@25
    .line 93
    :catchall_0
    move-exception v2

    #@26
    .line 94
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    #@29
    .line 93
    throw v2
.end method

.method static goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 2
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    const-wide/16 v0, 0x1388

    #@2
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/os/TransferPipe;->goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V

    #@5
    .line 99
    return-void
.end method

.method static goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V
    .locals 3
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    instance-of v2, p0, Landroid/os/Binder;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 108
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 111
    :goto_0
    return-void

    #@8
    .line 109
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@a
    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Lcom/android/internal/os/TransferPipe;

    #@c
    invoke-direct {v1}, Lcom/android/internal/os/TransferPipe;-><init>()V

    #@f
    .line 116
    .local v1, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@16
    move-result-object v2

    #@17
    invoke-interface {p0, v2, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    #@1a
    .line 117
    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    .line 119
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    #@20
    .line 104
    return-void

    #@21
    .line 118
    :catchall_0
    move-exception v2

    #@22
    .line 119
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    #@25
    .line 118
    throw v2
.end method


# virtual methods
.method closeFd(I)V
    .locals 3
    .param p1, "num"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 166
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    #@3
    aget-object v1, v1, p1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    #@9
    aget-object v1, v1, p1

    #@b
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 172
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    #@10
    aput-object v2, v1, p1

    #@12
    .line 165
    :cond_0
    return-void

    #@13
    .line 170
    :catch_0
    move-exception v0

    #@14
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method getReadFd()Landroid/os/ParcelFileDescriptor;
    .locals 2

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    return-object v0
.end method

.method public getWriteFd()Landroid/os/ParcelFileDescriptor;
    .locals 2

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    #@2
    const/4 v1, 0x1

    #@3
    aget-object v0, v0, v1

    #@5
    return-object v0
.end method

.method public go(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    const-wide/16 v0, 0x1388

    #@2
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V

    #@5
    .line 123
    return-void
.end method

.method public go(Ljava/io/FileDescriptor;J)V
    .locals 8
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1
    .line 130
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    #@3
    .line 131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6
    move-result-wide v4

    #@7
    add-long/2addr v4, p2

    #@8
    iput-wide v4, p0, Lcom/android/internal/os/TransferPipe;->mEndTime:J

    #@a
    .line 137
    const/4 v1, 0x1

    #@b
    invoke-virtual {p0, v1}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    #@e
    .line 139
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    #@10
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@13
    .line 141
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    #@15
    if-nez v1, :cond_0

    #@17
    iget-boolean v1, p0, Lcom/android/internal/os/TransferPipe;->mComplete:Z

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 156
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    #@1d
    if-eqz v1, :cond_3

    #@1f
    .line 157
    new-instance v1, Ljava/io/IOException;

    #@21
    iget-object v4, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    #@23
    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .line 129
    :catchall_0
    move-exception v1

    #@28
    :try_start_2
    monitor-exit p0

    #@29
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2a
    .line 160
    :catchall_1
    move-exception v1

    #@2b
    .line 161
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    #@2e
    .line 160
    throw v1

    #@2f
    .line 142
    :cond_1
    :try_start_3
    iget-wide v4, p0, Lcom/android/internal/os/TransferPipe;->mEndTime:J

    #@31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@34
    move-result-wide v6

    #@35
    sub-long v2, v4, v6

    #@37
    .line 143
    .local v2, "waitTime":J
    const-wide/16 v4, 0x0

    #@39
    cmp-long v1, v2, v4

    #@3b
    if-gtz v1, :cond_2

    #@3d
    .line 145
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    #@3f
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    #@42
    .line 146
    new-instance v1, Ljava/io/IOException;

    #@44
    const-string/jumbo v4, "Timeout"

    #@47
    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4b
    .line 150
    :cond_2
    :try_start_4
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/TransferPipe;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4e
    goto :goto_0

    #@4f
    .line 151
    :catch_0
    move-exception v0

    #@50
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@51
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "waitTime":J
    :cond_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@52
    .line 161
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    #@55
    .line 127
    return-void
.end method

.method public kill()V
    .locals 1

    #@0
    .prologue
    .line 177
    monitor-enter p0

    #@1
    .line 178
    const/4 v0, 0x0

    #@2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    #@5
    .line 179
    const/4 v0, 0x1

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 176
    return-void

    #@b
    .line 177
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public run()V
    .locals 12

    #@0
    .prologue
    const/16 v11, 0xa

    #@2
    .line 185
    const/16 v10, 0x400

    #@4
    new-array v0, v10, [B

    #@6
    .line 189
    .local v0, "buffer":[B
    monitor-enter p0

    #@7
    .line 190
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->getReadFd()Landroid/os/ParcelFileDescriptor;

    #@a
    move-result-object v7

    #@b
    .line 191
    .local v7, "readFd":Landroid/os/ParcelFileDescriptor;
    if-nez v7, :cond_0

    #@d
    .line 192
    const-string/jumbo v10, "TransferPipe"

    #@10
    const-string/jumbo v11, "Pipe has been closed..."

    #@13
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 193
    return-void

    #@18
    .line 195
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    #@1a
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@1d
    move-result-object v10

    #@1e
    invoke-direct {v3, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@21
    .line 196
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    #@23
    iget-object v10, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    #@25
    invoke-direct {v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .local v4, "fos":Ljava/io/FileOutputStream;
    monitor-exit p0

    #@29
    .line 200
    const/4 v1, 0x0

    #@2a
    .line 201
    .local v1, "bufferPrefix":[B
    const/4 v6, 0x1

    #@2b
    .line 202
    .local v6, "needPrefix":Z
    iget-object v10, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    #@2d
    if-eqz v10, :cond_1

    #@2f
    .line 203
    iget-object v10, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    #@31
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    #@34
    move-result-object v1

    #@35
    .line 208
    .end local v1    # "bufferPrefix":[B
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    #@38
    move-result v8

    #@39
    .local v8, "size":I
    if-lez v8, :cond_8

    #@3b
    .line 210
    if-nez v1, :cond_2

    #@3d
    .line 211
    const/4 v10, 0x0

    #@3e
    invoke-virtual {v4, v0, v10, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@41
    goto :goto_0

    #@42
    .line 241
    .end local v8    # "size":I
    :catch_0
    move-exception v2

    #@43
    .line 242
    .local v2, "e":Ljava/io/IOException;
    monitor-enter p0

    #@44
    .line 243
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@47
    move-result-object v10

    #@48
    iput-object v10, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    #@4a
    .line 244
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@4d
    monitor-exit p0

    #@4e
    .line 245
    return-void

    #@4f
    .line 189
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "needPrefix":Z
    .end local v7    # "readFd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v10

    #@50
    monitor-exit p0

    #@51
    throw v10

    #@52
    .line 213
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "needPrefix":Z
    .restart local v7    # "readFd":Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "size":I
    :cond_2
    const/4 v9, 0x0

    #@53
    .line 214
    .local v9, "start":I
    const/4 v5, 0x0

    #@54
    .local v5, "i":I
    :goto_1
    if-ge v5, v8, :cond_7

    #@56
    .line 215
    :try_start_4
    aget-byte v10, v0, v5

    #@58
    if-eq v10, v11, :cond_6

    #@5a
    .line 216
    if-le v5, v9, :cond_3

    #@5c
    .line 217
    sub-int v10, v5, v9

    #@5e
    invoke-virtual {v4, v0, v9, v10}, Ljava/io/FileOutputStream;->write([BII)V

    #@61
    .line 219
    :cond_3
    move v9, v5

    #@62
    .line 220
    if-eqz v6, :cond_4

    #@64
    .line 221
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    #@67
    .line 222
    const/4 v6, 0x0

    #@68
    .line 225
    :cond_4
    add-int/lit8 v5, v5, 0x1

    #@6a
    .line 226
    if-ge v5, v8, :cond_5

    #@6c
    aget-byte v10, v0, v5

    #@6e
    if-ne v10, v11, :cond_4

    #@70
    .line 227
    :cond_5
    if-ge v5, v8, :cond_6

    #@72
    .line 228
    const/4 v6, 0x1

    #@73
    .line 214
    :cond_6
    add-int/lit8 v5, v5, 0x1

    #@75
    goto :goto_1

    #@76
    .line 232
    :cond_7
    if-le v8, v9, :cond_1

    #@78
    .line 233
    sub-int v10, v8, v9

    #@7a
    invoke-virtual {v4, v0, v9, v10}, Ljava/io/FileOutputStream;->write([BII)V

    #@7d
    goto :goto_0

    #@7e
    .line 238
    .end local v5    # "i":I
    .end local v9    # "start":I
    :cond_8
    iget-object v10, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    #@80
    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@83
    move-result v10

    #@84
    if-eqz v10, :cond_9

    #@86
    .line 249
    :cond_9
    monitor-enter p0

    #@87
    .line 250
    const/4 v10, 0x1

    #@88
    :try_start_5
    iput-boolean v10, p0, Lcom/android/internal/os/TransferPipe;->mComplete:Z

    #@8a
    .line 251
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@8d
    monitor-exit p0

    #@8e
    .line 184
    return-void

    #@8f
    .line 242
    .end local v8    # "size":I
    .restart local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    #@90
    monitor-exit p0

    #@91
    throw v10

    #@92
    .line 249
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v8    # "size":I
    :catchall_2
    move-exception v10

    #@93
    monitor-exit p0

    #@94
    throw v10
.end method

.method public setBufferPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    #@2
    .line 69
    return-void
.end method
