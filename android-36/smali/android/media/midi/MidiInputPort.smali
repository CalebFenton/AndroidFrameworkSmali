.class public final Landroid/media/midi/MidiInputPort;
.super Landroid/media/midi/MidiReceiver;
.source "MidiInputPort.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "MidiInputPort"


# instance fields
.field private final greylist-max-o mBuffer:[B

.field private greylist-max-o mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

.field private greylist-max-o mFileDescriptor:Ljava/io/FileDescriptor;

.field private final greylist-max-o mGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mIsClosed:Z

.field private greylist-max-o mOutputStream:Ljava/io/FileOutputStream;

.field private final greylist-max-o mPortNumber:I

.field private final greylist-max-o mToken:Landroid/os/IBinder;

.field private blacklist mTotalBytes:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Ljava/io/FileDescriptor;I)V
    .registers 7
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "fd"    # Ljava/io/FileDescriptor;
    .param p4, "portNumber"    # I

    .line 54
    const/16 v0, 0x3f7

    invoke-direct {p0, v0}, Landroid/media/midi/MidiReceiver;-><init>(I)V

    .line 45
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/media/midi/MidiInputPort;->mTotalBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    .line 56
    iput-object p1, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    .line 57
    iput-object p2, p0, Landroid/media/midi/MidiInputPort;->mToken:Landroid/os/IBinder;

    .line 58
    iput-object p3, p0, Landroid/media/midi/MidiInputPort;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 59
    iput p4, p0, Landroid/media/midi/MidiInputPort;->mPortNumber:I

    .line 60
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    .line 61
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/io/FileDescriptor;I)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "portNumber"    # I

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Landroid/media/midi/MidiInputPort;-><init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Ljava/io/FileDescriptor;I)V

    .line 66
    return-void
.end method


# virtual methods
.method greylist-max-o claimFileDescriptor()Ljava/io/FileDescriptor;
    .registers 6

    .line 109
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v0

    .line 111
    :try_start_3
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_20

    .line 112
    :try_start_6
    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 113
    .local v2, "fd":Ljava/io/FileDescriptor;
    const/4 v3, 0x0

    if-nez v2, :cond_e

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_1d

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_20

    return-object v3

    .line 114
    :cond_e
    :try_start_e
    iget-object v4, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 115
    iput-object v3, p0, Landroid/media/midi/MidiInputPort;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 116
    iput-object v3, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    .line 117
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1d

    .line 121
    const/4 v1, 0x1

    :try_start_19
    iput-boolean v1, p0, Landroid/media/midi/MidiInputPort;->mIsClosed:Z

    .line 122
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_20

    return-object v2

    .line 117
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    .end local p0    # "this":Landroid/media/midi/MidiInputPort;
    :try_start_1f
    throw v2

    .line 123
    .restart local p0    # "this":Landroid/media/midi/MidiInputPort;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_20

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v0

    .line 139
    :try_start_3
    iget-boolean v1, p0, Landroid/media/midi/MidiInputPort;->mIsClosed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 140
    :cond_9
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 141
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    monitor-enter v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_45

    .line 142
    :try_start_11
    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mFileDescriptor:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    .line 143
    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 144
    iput-object v3, p0, Landroid/media/midi/MidiInputPort;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 146
    :cond_1d
    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_28

    .line 147
    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 148
    iput-object v3, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    .line 150
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_42

    .line 151
    :try_start_29
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_45

    if-eqz v1, :cond_3d

    .line 153
    :try_start_2d
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/midi/IMidiDeviceServer;->closePort(Landroid/os/IBinder;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_35
    .catchall {:try_start_2d .. :try_end_34} :catchall_45

    .line 156
    goto :goto_3d

    .line 154
    :catch_35
    move-exception v1

    .line 155
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_36
    const-string v2, "MidiInputPort"

    const-string v3, "RemoteException in MidiInputPort.close()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3d
    :goto_3d
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/midi/MidiInputPort;->mIsClosed:Z

    .line 159
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_45

    .line 160
    return-void

    .line 150
    :catchall_42
    move-exception v2

    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    .end local p0    # "this":Landroid/media/midi/MidiInputPort;
    :try_start_44
    throw v2

    .line 159
    .restart local p0    # "this":Landroid/media/midi/MidiInputPort;
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_45

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 165
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 166
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 170
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    .line 171
    invoke-virtual {p0}, Landroid/media/midi/MidiInputPort;->close()V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_14

    .line 173
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 174
    nop

    .line 175
    return-void

    .line 173
    :catchall_14
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 174
    throw v0
.end method

.method greylist-max-o getDeviceServer()Landroid/media/midi/IMidiDeviceServer;
    .registers 2

    .line 133
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    return-object v0
.end method

.method public final whitelist getPortNumber()I
    .registers 2

    .line 74
    iget v0, p0, Landroid/media/midi/MidiInputPort;->mPortNumber:I

    return v0
.end method

.method greylist-max-o getToken()Landroid/os/IBinder;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist onFlush()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    monitor-enter v0

    .line 99
    :try_start_3
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_17

    .line 102
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    invoke-static {v1}, Landroid/media/midi/MidiPortImpl;->packFlush([B)I

    move-result v1

    .line 103
    .local v1, "length":I
    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    iget-object v3, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 104
    .end local v1    # "length":I
    monitor-exit v0

    .line 105
    return-void

    .line 100
    :cond_17
    new-instance v1, Ljava/io/IOException;

    const-string v2, "MidiInputPort is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/midi/MidiInputPort;
    throw v1

    .line 104
    .restart local p0    # "this":Landroid/media/midi/MidiInputPort;
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist onSend([BIIJ)V
    .registers 14
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    if-ltz p2, :cond_4f

    if-ltz p3, :cond_4f

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4f

    .line 82
    const/16 v0, 0x3f7

    if-gt p3, v0, :cond_45

    .line 86
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    monitor-enter v1

    .line 87
    :try_start_10
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_2e

    .line 90
    iget-object v7, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_3a

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    .end local p1    # "msg":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    .end local p4    # "timestamp":J
    .local v2, "msg":[B
    .local v3, "offset":I
    .local v4, "count":I
    .local v5, "timestamp":J
    :try_start_1a
    invoke-static/range {v2 .. v7}, Landroid/media/midi/MidiPortImpl;->packData([BIIJ[B)I

    move-result p1

    .line 91
    .local p1, "length":I
    iget-object p2, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    iget-object p3, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4, p1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 92
    iget-object p2, p0, Landroid/media/midi/MidiInputPort;->mTotalBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 93
    nop

    .end local p1    # "length":I
    monitor-exit v1

    .line 94
    return-void

    .line 88
    .end local v2    # "msg":[B
    .end local v3    # "offset":I
    .end local v4    # "count":I
    .end local v5    # "timestamp":J
    .local p1, "msg":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    .restart local p4    # "timestamp":J
    :cond_2e
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    .end local p1    # "msg":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    .end local p4    # "timestamp":J
    .restart local v2    # "msg":[B
    .restart local v3    # "offset":I
    .restart local v4    # "count":I
    .restart local v5    # "timestamp":J
    new-instance p1, Ljava/io/IOException;

    const-string p2, "MidiInputPort is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "msg":[B
    .end local v3    # "offset":I
    .end local v4    # "count":I
    .end local v5    # "timestamp":J
    .end local p0    # "this":Landroid/media/midi/MidiInputPort;
    throw p1

    .line 93
    .restart local p0    # "this":Landroid/media/midi/MidiInputPort;
    .restart local p1    # "msg":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    .restart local p4    # "timestamp":J
    :catchall_3a
    move-exception v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move-object p1, v0

    .end local p1    # "msg":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    .end local p4    # "timestamp":J
    .restart local v2    # "msg":[B
    .restart local v3    # "offset":I
    .restart local v4    # "count":I
    .restart local v5    # "timestamp":J
    :goto_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_1a .. :try_end_41} :catchall_42

    throw p1

    :catchall_42
    move-exception v0

    move-object p1, v0

    goto :goto_40

    .line 83
    .end local v2    # "msg":[B
    .end local v3    # "offset":I
    .end local v4    # "count":I
    .end local v5    # "timestamp":J
    .restart local p1    # "msg":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    .restart local p4    # "timestamp":J
    :cond_45
    move-object v2, p1

    move v3, p2

    .end local p1    # "msg":[B
    .end local p2    # "offset":I
    .restart local v2    # "msg":[B
    .restart local v3    # "offset":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "count exceeds max message size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    .end local v2    # "msg":[B
    .end local v3    # "offset":I
    .restart local p1    # "msg":[B
    .restart local p2    # "offset":I
    :cond_4f
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    .line 80
    .end local p1    # "msg":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    .end local p4    # "timestamp":J
    .restart local v2    # "msg":[B
    .restart local v3    # "offset":I
    .restart local v4    # "count":I
    .restart local v5    # "timestamp":J
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset or count out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist pullTotalBytesCount()I
    .registers 3

    .line 182
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mTotalBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    return v0
.end method
