.class public final Landroid/media/midi/MidiInputPort;
.super Landroid/media/midi/MidiReceiver;
.source "MidiInputPort.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final TAG:Ljava/lang/String; = "MidiInputPort"


# instance fields
.field private final mBuffer:[B

.field private mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private mIsClosed:Z

.field private mOutputStream:Ljava/io/FileOutputStream;

.field private mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mPortNumber:I

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)V
    .locals 2
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "portNumber"    # I

    #@0
    .prologue
    .line 52
    const/16 v0, 0x3f7

    #@2
    invoke-direct {p0, v0}, Landroid/media/midi/MidiReceiver;-><init>(I)V

    #@5
    .line 44
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    #@b
    .line 48
    const/16 v0, 0x400

    #@d
    new-array v0, v0, [B

    #@f
    iput-object v0, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    #@11
    .line 54
    iput-object p1, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@13
    .line 55
    iput-object p2, p0, Landroid/media/midi/MidiInputPort;->mToken:Landroid/os/IBinder;

    #@15
    .line 56
    iput-object p3, p0, Landroid/media/midi/MidiInputPort;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@17
    .line 57
    iput p4, p0, Landroid/media/midi/MidiInputPort;->mPortNumber:I

    #@19
    .line 58
    new-instance v0, Ljava/io/FileOutputStream;

    #@1b
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@22
    iput-object v0, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    #@24
    .line 59
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    #@26
    const-string/jumbo v1, "close"

    #@29
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@2c
    .line 51
    return-void
.end method

.method constructor <init>(Landroid/os/ParcelFileDescriptor;I)V
    .locals 1
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "portNumber"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 63
    invoke-direct {p0, v0, v0, p1, p2}, Landroid/media/midi/MidiInputPort;-><init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)V

    #@4
    .line 62
    return-void
.end method


# virtual methods
.method claimFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 106
    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    #@3
    monitor-enter v2

    #@4
    .line 108
    :try_start_0
    iget-object v3, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    #@6
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    .line 109
    :try_start_1
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9
    .line 110
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_0

    #@b
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@c
    monitor-exit v2

    #@d
    return-object v1

    #@e
    .line 111
    :cond_0
    :try_start_3
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    #@10
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@13
    .line 112
    const/4 v1, 0x0

    #@14
    iput-object v1, p0, Landroid/media/midi/MidiInputPort;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@16
    .line 113
    const/4 v1, 0x0

    #@17
    iput-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@19
    :try_start_4
    monitor-exit v3

    #@1a
    .line 118
    const/4 v1, 0x1

    #@1b
    iput-boolean v1, p0, Landroid/media/midi/MidiInputPort;->mIsClosed:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1d
    monitor-exit v2

    #@1e
    .line 119
    return-object v0

    #@1f
    .line 108
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v1

    #@20
    :try_start_5
    monitor-exit v3

    #@21
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@22
    .line 106
    :catchall_1
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    #@2
    monitor-enter v2

    #@3
    .line 136
    :try_start_0
    iget-boolean v1, p0, Landroid/media/midi/MidiInputPort;->mIsClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@5
    if-eqz v1, :cond_0

    #@7
    monitor-exit v2

    #@8
    return-void

    #@9
    .line 137
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    #@b
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    #@e
    .line 138
    iget-object v3, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    #@10
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@11
    .line 139
    :try_start_2
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 140
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@17
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    #@1a
    .line 141
    const/4 v1, 0x0

    #@1b
    iput-object v1, p0, Landroid/media/midi/MidiInputPort;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@1d
    .line 143
    :cond_1
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 144
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    #@23
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    #@26
    .line 145
    const/4 v1, 0x0

    #@27
    iput-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    :cond_2
    :try_start_3
    monitor-exit v3

    #@2a
    .line 148
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2c
    if-eqz v1, :cond_3

    #@2e
    .line 150
    :try_start_4
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@30
    iget-object v3, p0, Landroid/media/midi/MidiInputPort;->mToken:Landroid/os/IBinder;

    #@32
    invoke-interface {v1, v3}, Landroid/media/midi/IMidiDeviceServer;->closePort(Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@35
    .line 155
    :cond_3
    :goto_0
    const/4 v1, 0x1

    #@36
    :try_start_5
    iput-boolean v1, p0, Landroid/media/midi/MidiInputPort;->mIsClosed:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@38
    monitor-exit v2

    #@39
    .line 134
    return-void

    #@3a
    .line 138
    :catchall_0
    move-exception v1

    #@3b
    :try_start_6
    monitor-exit v3

    #@3c
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@3d
    .line 135
    :catchall_1
    move-exception v1

    #@3e
    monitor-exit v2

    #@3f
    throw v1

    #@40
    .line 151
    :catch_0
    move-exception v0

    #@41
    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v1, "MidiInputPort"

    #@44
    const-string/jumbo v3, "RemoteException in MidiInputPort.close()"

    #@47
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@4a
    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@5
    .line 164
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@8
    .line 165
    invoke-virtual {p0}, Landroid/media/midi/MidiInputPort;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 167
    invoke-super {p0}, Landroid/media/midi/MidiReceiver;->finalize()V

    #@e
    .line 160
    return-void

    #@f
    .line 166
    :catchall_0
    move-exception v0

    #@10
    .line 167
    invoke-super {p0}, Landroid/media/midi/MidiReceiver;->finalize()V

    #@13
    .line 166
    throw v0
.end method

.method getDeviceServer()Landroid/media/midi/IMidiDeviceServer;
    .locals 1

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@2
    return-object v0
.end method

.method public final getPortNumber()I
    .locals 1

    #@0
    .prologue
    .line 72
    iget v0, p0, Landroid/media/midi/MidiInputPort;->mPortNumber:I

    #@2
    return v0
.end method

.method getToken()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mToken:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public onFlush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    #@2
    monitor-enter v2

    #@3
    .line 96
    :try_start_0
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 97
    new-instance v1, Ljava/io/IOException;

    #@9
    const-string/jumbo v3, "MidiInputPort is closed"

    #@c
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 95
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1

    #@13
    .line 99
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    #@15
    invoke-static {v1}, Landroid/media/midi/MidiPortImpl;->packFlush([B)I

    #@18
    move-result v0

    #@19
    .line 100
    .local v0, "length":I
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    #@1b
    iget-object v3, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-virtual {v1, v3, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 94
    return-void
.end method

.method public onSend([BIIJ)V
    .locals 8
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    if-ltz p2, :cond_0

    #@2
    if-gez p3, :cond_1

    #@4
    .line 78
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v2, "offset or count out of range"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 77
    :cond_1
    add-int v1, p2, p3

    #@f
    array-length v2, p1

    #@10
    if-gt v1, v2, :cond_0

    #@12
    .line 80
    const/16 v1, 0x3f7

    #@14
    if-le p3, v1, :cond_2

    #@16
    .line 81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v2, "count exceeds max message size"

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 84
    :cond_2
    iget-object v7, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    #@21
    monitor-enter v7

    #@22
    .line 85
    :try_start_0
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    #@24
    if-nez v1, :cond_3

    #@26
    .line 86
    new-instance v1, Ljava/io/IOException;

    #@28
    const-string/jumbo v2, "MidiInputPort is closed"

    #@2b
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 84
    :catchall_0
    move-exception v1

    #@30
    monitor-exit v7

    #@31
    throw v1

    #@32
    .line 88
    :cond_3
    :try_start_1
    iget-object v6, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    #@34
    move-object v1, p1

    #@35
    move v2, p2

    #@36
    move v3, p3

    #@37
    move-wide v4, p4

    #@38
    invoke-static/range {v1 .. v6}, Landroid/media/midi/MidiPortImpl;->packData([BIIJ[B)I

    #@3b
    move-result v0

    #@3c
    .line 89
    .local v0, "length":I
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    #@3e
    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    #@40
    const/4 v3, 0x0

    #@41
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    monitor-exit v7

    #@45
    .line 76
    return-void
.end method
