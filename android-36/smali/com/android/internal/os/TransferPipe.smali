.class public Lcom/android/internal/os/TransferPipe;
.super Ljava/lang/Object;
.source "TransferPipe.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/TransferPipe$Caller;
    }
.end annotation


# static fields
.field static final blacklist DEBUG:Z = false

.field static final blacklist DEFAULT_TIMEOUT:J = 0x1388L

.field static final blacklist TAG:Ljava/lang/String; = "TransferPipe"


# instance fields
.field blacklist mBufferPrefix:Ljava/lang/String;

.field blacklist mComplete:Z

.field blacklist mEndTime:J

.field blacklist mFailure:Ljava/lang/String;

.field final blacklist mFds:[Landroid/os/ParcelFileDescriptor;

.field blacklist mOutFd:Ljava/io/FileDescriptor;

.field final blacklist mThread:Ljava/lang/Thread;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/TransferPipe;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "bufferPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    const-string v0, "TransferPipe"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/TransferPipe;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "bufferPrefix"    # Ljava/lang/String;
    .param p2, "threadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    .line 73
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    .line 74
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static blacklist dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 3
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-static {p0, p1, p2}, Lcom/android/internal/os/TransferPipe;->goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static varargs blacklist dumpAsync(Landroid/os/IBinder;[Ljava/lang/String;)[B
    .registers 10
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 106
    .local v0, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_6
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {p0, v3, p1}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 109
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 110
    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 112
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 113
    .local v3, "buffer":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_60

    .line 114
    .local v4, "combinedBuffer":Ljava/io/ByteArrayOutputStream;
    :try_start_20
    new-instance v5, Ljava/io/FileInputStream;

    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_56

    .line 116
    .local v5, "is":Ljava/io/FileInputStream;
    :goto_2b
    :try_start_2b
    invoke-virtual {v5, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v6
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_4c

    .line 117
    .local v6, "numRead":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_48

    .line 118
    nop

    .line 123
    .end local v6    # "numRead":I
    :try_start_33
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 125
    .end local v5    # "is":Ljava/io/FileInputStream;
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_56

    .line 126
    :try_start_3a
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_60

    .line 128
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 129
    aget-object v1, v0, v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 125
    return-object v5

    .line 121
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "numRead":I
    :cond_48
    :try_start_48
    invoke-virtual {v4, v3, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    .line 122
    .end local v6    # "numRead":I
    goto :goto_2b

    .line 114
    :catchall_4c
    move-exception v6

    :try_start_4d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v7

    :try_start_52
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "buffer":[B
    .end local v4    # "combinedBuffer":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "binder":Landroid/os/IBinder;
    .end local p1    # "args":[Ljava/lang/String;
    :goto_55
    throw v6
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_56

    .line 113
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "buffer":[B
    .restart local v4    # "combinedBuffer":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "binder":Landroid/os/IBinder;
    .restart local p1    # "args":[Ljava/lang/String;
    :catchall_56
    move-exception v5

    :try_start_57
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception v6

    :try_start_5c
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local p0    # "binder":Landroid/os/IBinder;
    .end local p1    # "args":[Ljava/lang/String;
    :goto_5f
    throw v5
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_60

    .line 128
    .end local v3    # "buffer":[B
    .end local v4    # "combinedBuffer":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "binder":Landroid/os/IBinder;
    .restart local p1    # "args":[Ljava/lang/String;
    :catchall_60
    move-exception v3

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 129
    aget-object v1, v0, v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 130
    throw v3
.end method

.method static blacklist go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12
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

    .line 135
    const-wide/16 v5, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "caller":Lcom/android/internal/os/TransferPipe$Caller;
    .end local p1    # "iface":Landroid/os/IInterface;
    .end local p2    # "out":Ljava/io/FileDescriptor;
    .end local p3    # "prefix":Ljava/lang/String;
    .end local p4    # "args":[Ljava/lang/String;
    .local v0, "caller":Lcom/android/internal/os/TransferPipe$Caller;
    .local v1, "iface":Landroid/os/IInterface;
    .local v2, "out":Ljava/io/FileDescriptor;
    .local v3, "prefix":Ljava/lang/String;
    .local v4, "args":[Ljava/lang/String;
    invoke-static/range {v0 .. v6}, Lcom/android/internal/os/TransferPipe;->go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 136
    return-void
.end method

.method static blacklist go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V
    .registers 10
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

    .line 140
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_e

    .line 143
    :try_start_8
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/os/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 145
    goto :goto_d

    .line 144
    :catch_c
    move-exception v0

    .line 146
    :goto_d
    return-void

    .line 149
    :cond_e
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V

    .line 150
    .local v0, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_13
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p0, p1, v1, p3, p4}, Lcom/android/internal/os/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p2, p5, p6}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_25

    .line 152
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->close()V

    .line 153
    .end local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    return-void

    .line 149
    .restart local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_25
    move-exception v1

    :try_start_26
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw v1
.end method

.method static blacklist goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 5
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/os/TransferPipe;->goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V

    .line 158
    return-void
.end method

.method static blacklist goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V
    .registers 8
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

    .line 162
    instance-of v0, p0, Landroid/os/Binder;

    if-eqz v0, :cond_a

    .line 165
    :try_start_4
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 167
    goto :goto_9

    .line 166
    :catch_8
    move-exception v0

    .line 168
    :goto_9
    return-void

    .line 171
    :cond_a
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V

    .line 172
    .local v0, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_f
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p1, p3, p4}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_21

    .line 174
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->close()V

    .line 175
    .end local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    return-void

    .line 171
    .restart local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_21
    move-exception v1

    :try_start_22
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 233
    return-void
.end method

.method blacklist closeFd(I)V
    .registers 4
    .param p1, "num"    # I

    .line 220
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, p1

    if-eqz v0, :cond_14

    .line 223
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_e

    .line 225
    goto :goto_f

    .line 224
    :catch_e
    move-exception v0

    .line 226
    :goto_f
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 228
    :cond_14
    return-void
.end method

.method protected blacklist getNewOutputStream()Ljava/io/OutputStream;
    .registers 3

    .line 243
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method blacklist getReadFd()Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist getWriteFd()Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist go(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V

    .line 179
    return-void
.end method

.method public blacklist go(Ljava/io/FileDescriptor;J)V
    .registers 8
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_50

    .line 184
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    .line 185
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/internal/os/TransferPipe;->mEndTime:J

    .line 191
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 195
    :goto_13
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Lcom/android/internal/os/TransferPipe;->mComplete:Z

    if-nez v0, :cond_3b

    .line 196
    iget-wide v0, p0, Lcom/android/internal/os/TransferPipe;->mEndTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_4d

    sub-long/2addr v0, v2

    .line 197
    .local v0, "waitTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2e

    .line 204
    :try_start_28
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_2c
    .catchall {:try_start_28 .. :try_end_2b} :catchall_4d

    .line 206
    goto :goto_2d

    .line 205
    :catch_2c
    move-exception v2

    .line 207
    .end local v0    # "waitTime":J
    :goto_2d
    goto :goto_13

    .line 199
    .restart local v0    # "waitTime":J
    :cond_2e
    :try_start_2e
    iget-object v2, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 200
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Timeout"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/os/TransferPipe;
    .end local p1    # "out":Ljava/io/FileDescriptor;
    .end local p2    # "timeout":J
    throw v2

    .line 210
    .end local v0    # "waitTime":J
    .restart local p0    # "this":Lcom/android/internal/os/TransferPipe;
    .restart local p1    # "out":Ljava/io/FileDescriptor;
    .restart local p2    # "timeout":J
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    if-nez v0, :cond_45

    .line 213
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_4d

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 216
    nop

    .line 217
    return-void

    .line 211
    :cond_45
    :try_start_45
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/os/TransferPipe;
    .end local p1    # "out":Ljava/io/FileDescriptor;
    .end local p2    # "timeout":J
    throw v0

    .line 213
    .restart local p0    # "this":Lcom/android/internal/os/TransferPipe;
    .restart local p1    # "out":Ljava/io/FileDescriptor;
    .restart local p2    # "timeout":J
    :catchall_4d
    move-exception v0

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_4d

    .end local p0    # "this":Lcom/android/internal/os/TransferPipe;
    .end local p1    # "out":Ljava/io/FileDescriptor;
    .end local p2    # "timeout":J
    :try_start_4f
    throw v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    .line 215
    .restart local p0    # "this":Lcom/android/internal/os/TransferPipe;
    .restart local p1    # "out":Ljava/io/FileDescriptor;
    .restart local p2    # "timeout":J
    :catchall_50
    move-exception v0

    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 216
    throw v0
.end method

.method public blacklist kill()V
    .registers 2

    .line 236
    monitor-enter p0

    .line 237
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 238
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 239
    monitor-exit p0

    .line 240
    return-void

    .line 239
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public whitelist test-api run()V
    .registers 12

    .line 248
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 252
    .local v0, "buffer":[B
    monitor-enter p0

    .line 253
    :try_start_5
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->getReadFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 254
    .local v1, "readFd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_14

    .line 255
    const-string v2, "TransferPipe"

    const-string v3, "Pipe has been closed..."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    monitor-exit p0

    return-void

    .line 258
    :cond_14
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 259
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->getNewOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 260
    .end local v1    # "readFd":Landroid/os/ParcelFileDescriptor;
    .local v3, "fos":Ljava/io/OutputStream;
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_8a

    .line 263
    const/4 v1, 0x0

    .line 264
    .local v1, "bufferPrefix":[B
    const/4 v4, 0x1

    .line 265
    .local v4, "needPrefix":Z
    iget-object v5, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    if-eqz v5, :cond_2e

    .line 266
    iget-object v5, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 271
    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "size":I
    const/4 v7, 0x1

    if-lez v5, :cond_69

    .line 273
    if-nez v1, :cond_3d

    .line 274
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2e

    .line 276
    :cond_3d
    const/4 v5, 0x0

    .line 277
    .local v5, "start":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3f
    if-ge v8, v6, :cond_61

    .line 278
    aget-byte v9, v0, v8

    const/16 v10, 0xa

    if-eq v9, v10, :cond_5f

    .line 279
    if-le v8, v5, :cond_4e

    .line 280
    sub-int v9, v8, v5

    invoke-virtual {v3, v0, v5, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 282
    :cond_4e
    move v5, v8

    .line 283
    if-eqz v4, :cond_55

    .line 284
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 285
    const/4 v4, 0x0

    .line 288
    :cond_55
    add-int/2addr v8, v7

    .line 289
    if-ge v8, v6, :cond_5c

    aget-byte v9, v0, v8

    if-ne v9, v10, :cond_55

    .line 290
    :cond_5c
    if-ge v8, v6, :cond_5f

    .line 291
    const/4 v4, 0x1

    .line 277
    :cond_5f
    add-int/2addr v8, v7

    goto :goto_3f

    .line 295
    .end local v8    # "i":I
    :cond_61
    if-le v6, v5, :cond_68

    .line 296
    sub-int v7, v6, v5

    invoke-virtual {v3, v0, v5, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 298
    .end local v5    # "start":I
    :cond_68
    goto :goto_2e

    .line 301
    :cond_69
    iget-object v5, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_6e} :catch_7a

    .line 310
    nop

    .line 312
    monitor-enter p0

    .line 313
    :try_start_70
    iput-boolean v7, p0, Lcom/android/internal/os/TransferPipe;->mComplete:Z

    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 315
    monitor-exit p0

    .line 316
    return-void

    .line 315
    :catchall_77
    move-exception v5

    monitor-exit p0
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_77

    throw v5

    .line 304
    .end local v6    # "size":I
    :catch_7a
    move-exception v5

    .line 305
    .local v5, "e":Ljava/io/IOException;
    monitor-enter p0

    .line 306
    :try_start_7c
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 308
    monitor-exit p0

    return-void

    .line 309
    :catchall_87
    move-exception v6

    monitor-exit p0
    :try_end_89
    .catchall {:try_start_7c .. :try_end_89} :catchall_87

    throw v6

    .line 260
    .end local v1    # "bufferPrefix":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "fos":Ljava/io/OutputStream;
    .end local v4    # "needPrefix":Z
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_8a
    move-exception v1

    :try_start_8b
    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v1
.end method

.method public blacklist setBufferPrefix(Ljava/lang/String;)V
    .registers 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    .line 87
    return-void
.end method
