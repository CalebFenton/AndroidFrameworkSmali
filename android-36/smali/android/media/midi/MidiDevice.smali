.class public final Landroid/media/midi/MidiDevice;
.super Ljava/lang/Object;
.source "MidiDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiDevice$MidiConnection;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "MidiDevice"


# instance fields
.field private final greylist-max-o mClientToken:Landroid/os/IBinder;

.field private final greylist-max-o mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private final greylist-max-o mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

.field private final blacklist mDeviceServerBinder:Landroid/os/IBinder;

.field private final greylist-max-o mDeviceToken:Landroid/os/IBinder;

.field private final greylist-max-o mGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mIsDeviceClosed:Z

.field private final greylist-max-o mMidiManager:Landroid/media/midi/IMidiManager;

.field private greylist-max-o mNativeHandle:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeviceServer(Landroid/media/midi/MidiDevice;)Landroid/media/midi/IMidiDeviceServer;
    .registers 1

    iget-object p0, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/IMidiManager;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p2, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p3, "midiManager"    # Landroid/media/midi/IMidiManager;
    .param p4, "clientToken"    # Landroid/os/IBinder;
    .param p5, "deviceToken"    # Landroid/os/IBinder;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    .line 106
    iput-object p1, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 107
    iput-object p2, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    .line 108
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v0}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/media/midi/MidiDevice;->mDeviceServerBinder:Landroid/os/IBinder;

    .line 109
    iput-object p3, p0, Landroid/media/midi/MidiDevice;->mMidiManager:Landroid/media/midi/IMidiManager;

    .line 110
    iput-object p4, p0, Landroid/media/midi/MidiDevice;->mClientToken:Landroid/os/IBinder;

    .line 111
    iput-object p5, p0, Landroid/media/midi/MidiDevice;->mDeviceToken:Landroid/os/IBinder;

    .line 112
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 113
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v0

    .line 225
    :try_start_3
    iget-wide v1, p0, Landroid/media/midi/MidiDevice;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_29

    .line 226
    const-string v1, "MidiDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MidiDevice#close() called while there is an outstanding native client 0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Landroid/media/midi/MidiDevice;->mNativeHandle:J

    .line 227
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_29
    iget-boolean v1, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z

    if-nez v1, :cond_4d

    iget-wide v1, p0, Landroid/media/midi/MidiDevice;->mNativeHandle:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_4d

    .line 230
    iget-object v1, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 231
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_4f

    .line 233
    :try_start_3b
    iget-object v1, p0, Landroid/media/midi/MidiDevice;->mMidiManager:Landroid/media/midi/IMidiManager;

    iget-object v2, p0, Landroid/media/midi/MidiDevice;->mClientToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/media/midi/MidiDevice;->mDeviceToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, v3}, Landroid/media/midi/IMidiManager;->closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_44} :catch_45
    .catchall {:try_start_3b .. :try_end_44} :catchall_4f

    .line 236
    goto :goto_4d

    .line 234
    :catch_45
    move-exception v1

    .line 235
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_46
    const-string v2, "MidiDevice"

    const-string v3, "RemoteException in closeDevice"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4d
    :goto_4d
    monitor-exit v0

    .line 239
    return-void

    .line 238
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public whitelist connectPorts(Landroid/media/midi/MidiInputPort;I)Landroid/media/midi/MidiDevice$MidiConnection;
    .registers 8
    .param p1, "inputPort"    # Landroid/media/midi/MidiInputPort;
    .param p2, "outputPortNumber"    # I

    .line 191
    if-ltz p2, :cond_3a

    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v0

    if-ge p2, v0, :cond_3a

    .line 194
    iget-boolean v0, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 195
    return-object v1

    .line 198
    :cond_10
    invoke-virtual {p1}, Landroid/media/midi/MidiInputPort;->claimFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 199
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_17

    .line 200
    return-object v1

    .line 203
    :cond_17
    :try_start_17
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 204
    .local v2, "token":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v3, v2, v0, p2}, Landroid/media/midi/IMidiDeviceServer;->connectPorts(Landroid/os/IBinder;Ljava/io/FileDescriptor;I)I

    move-result v3

    .line 209
    .local v3, "calleePid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v3, v4, :cond_2b

    .line 211
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 214
    :cond_2b
    new-instance v4, Landroid/media/midi/MidiDevice$MidiConnection;

    invoke-direct {v4, p0, v2, p1}, Landroid/media/midi/MidiDevice$MidiConnection;-><init>(Landroid/media/midi/MidiDevice;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_30} :catch_31

    return-object v4

    .line 215
    .end local v2    # "token":Landroid/os/IBinder;
    .end local v3    # "calleePid":I
    :catch_31
    move-exception v2

    .line 216
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MidiDevice"

    const-string v4, "RemoteException in connectPorts"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-object v1

    .line 192
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputPortNumber out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 244
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 245
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 248
    :cond_9
    invoke-virtual {p0}, Landroid/media/midi/MidiDevice;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 250
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 251
    nop

    .line 252
    return-void

    .line 250
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 251
    throw v0
.end method

.method public whitelist getInfo()Landroid/media/midi/MidiDeviceInfo;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-object v0
.end method

.method public whitelist openInputPort(I)Landroid/media/midi/MidiInputPort;
    .registers 7
    .param p1, "portNumber"    # I

    .line 136
    iget-boolean v0, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 137
    return-object v1

    .line 140
    :cond_6
    :try_start_6
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 141
    .local v0, "token":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v2, v0, p1}, Landroid/media/midi/IMidiDeviceServer;->openInputPort(Landroid/os/IBinder;I)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 142
    .local v2, "fd":Ljava/io/FileDescriptor;
    if-nez v2, :cond_14

    .line 143
    return-object v1

    .line 145
    :cond_14
    new-instance v3, Landroid/media/midi/MidiInputPort;

    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-direct {v3, v4, v0, v2, p1}, Landroid/media/midi/MidiInputPort;-><init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Ljava/io/FileDescriptor;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1b} :catch_1c

    return-object v3

    .line 146
    .end local v0    # "token":Landroid/os/IBinder;
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :catch_1c
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MidiDevice"

    const-string v3, "RemoteException in openInputPort"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-object v1
.end method

.method public whitelist openOutputPort(I)Landroid/media/midi/MidiOutputPort;
    .registers 7
    .param p1, "portNumber"    # I

    .line 162
    iget-boolean v0, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 163
    return-object v1

    .line 166
    :cond_6
    :try_start_6
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 167
    .local v0, "token":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v2, v0, p1}, Landroid/media/midi/IMidiDeviceServer;->openOutputPort(Landroid/os/IBinder;I)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 168
    .local v2, "fd":Ljava/io/FileDescriptor;
    if-nez v2, :cond_14

    .line 169
    return-object v1

    .line 171
    :cond_14
    new-instance v3, Landroid/media/midi/MidiOutputPort;

    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-direct {v3, v4, v0, v2, p1}, Landroid/media/midi/MidiOutputPort;-><init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Ljava/io/FileDescriptor;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1b} :catch_1c

    return-object v3

    .line 172
    .end local v0    # "token":Landroid/os/IBinder;
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :catch_1c
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MidiDevice"

    const-string v3, "RemoteException in openOutputPort"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MidiDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v1}, Landroid/media/midi/MidiDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
