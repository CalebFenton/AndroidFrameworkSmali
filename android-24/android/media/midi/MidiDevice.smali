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
.field private static final TAG:Ljava/lang/String; = "MidiDevice"


# instance fields
.field private final mClientToken:Landroid/os/IBinder;

.field private final mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private final mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

.field private final mDeviceToken:Landroid/os/IBinder;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private mIsDeviceClosed:Z

.field private final mMidiManager:Landroid/media/midi/IMidiManager;


# direct methods
.method static synthetic -get0(Landroid/media/midi/MidiDevice;)Landroid/media/midi/IMidiDeviceServer;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@2
    return-object v0
.end method

.method constructor <init>(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/IMidiManager;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p2, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p3, "midiManager"    # Landroid/media/midi/IMidiManager;
    .param p4, "clientToken"    # Landroid/os/IBinder;
    .param p5, "deviceToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    #@9
    .line 98
    iput-object p1, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@b
    .line 99
    iput-object p2, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@d
    .line 100
    iput-object p3, p0, Landroid/media/midi/MidiDevice;->mMidiManager:Landroid/media/midi/IMidiManager;

    #@f
    .line 101
    iput-object p4, p0, Landroid/media/midi/MidiDevice;->mClientToken:Landroid/os/IBinder;

    #@11
    .line 102
    iput-object p5, p0, Landroid/media/midi/MidiDevice;->mDeviceToken:Landroid/os/IBinder;

    #@13
    .line 103
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    #@15
    const-string/jumbo v1, "close"

    #@18
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@1b
    .line 97
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    iget-object v2, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    #@2
    monitor-enter v2

    #@3
    .line 215
    :try_start_0
    iget-boolean v1, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z

    #@5
    if-nez v1, :cond_0

    #@7
    .line 216
    iget-object v1, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    #@9
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    #@c
    .line 217
    const/4 v1, 0x1

    #@d
    iput-boolean v1, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 219
    :try_start_1
    iget-object v1, p0, Landroid/media/midi/MidiDevice;->mMidiManager:Landroid/media/midi/IMidiManager;

    #@11
    iget-object v3, p0, Landroid/media/midi/MidiDevice;->mClientToken:Landroid/os/IBinder;

    #@13
    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceToken:Landroid/os/IBinder;

    #@15
    invoke-interface {v1, v3, v4}, Landroid/media/midi/IMidiManager;->closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    :cond_0
    :goto_0
    monitor-exit v2

    #@19
    .line 213
    return-void

    #@1a
    .line 220
    :catch_0
    move-exception v0

    #@1b
    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "MidiDevice"

    #@1e
    const-string/jumbo v3, "RemoteException in closeDevice"

    #@21
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 214
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@26
    monitor-exit v2

    #@27
    throw v1
.end method

.method public connectPorts(Landroid/media/midi/MidiInputPort;I)Landroid/media/midi/MidiDevice$MidiConnection;
    .locals 7
    .param p1, "inputPort"    # Landroid/media/midi/MidiInputPort;
    .param p2, "outputPortNumber"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 182
    if-ltz p2, :cond_0

    #@3
    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@5
    invoke-virtual {v4}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    #@8
    move-result v4

    #@9
    if-lt p2, v4, :cond_1

    #@b
    .line 183
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v5, "outputPortNumber out of range"

    #@10
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v4

    #@14
    .line 185
    :cond_1
    iget-boolean v4, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z

    #@16
    if-eqz v4, :cond_2

    #@18
    .line 186
    return-object v6

    #@19
    .line 189
    :cond_2
    invoke-virtual {p1}, Landroid/media/midi/MidiInputPort;->claimFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@1c
    move-result-object v2

    #@1d
    .line 190
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v2, :cond_3

    #@1f
    .line 191
    return-object v6

    #@20
    .line 194
    :cond_3
    :try_start_0
    new-instance v3, Landroid/os/Binder;

    #@22
    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    #@25
    .line 195
    .local v3, "token":Landroid/os/IBinder;
    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@27
    invoke-interface {v4, v3, v2, p2}, Landroid/media/midi/IMidiDeviceServer;->connectPorts(Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)I

    #@2a
    move-result v0

    #@2b
    .line 200
    .local v0, "calleePid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@2e
    move-result v4

    #@2f
    if-eq v0, v4, :cond_4

    #@31
    .line 202
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@34
    .line 205
    :cond_4
    new-instance v4, Landroid/media/midi/MidiDevice$MidiConnection;

    #@36
    invoke-direct {v4, p0, v3, p1}, Landroid/media/midi/MidiDevice$MidiConnection;-><init>(Landroid/media/midi/MidiDevice;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    return-object v4

    #@3a
    .line 206
    .end local v0    # "calleePid":I
    .end local v3    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    #@3b
    .line 207
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MidiDevice"

    #@3e
    const-string/jumbo v5, "RemoteException in connectPorts"

    #@41
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 208
    return-object v6
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
    .line 230
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@5
    .line 231
    invoke-virtual {p0}, Landroid/media/midi/MidiDevice;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 233
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 228
    return-void

    #@c
    .line 232
    :catchall_0
    move-exception v0

    #@d
    .line 233
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@10
    .line 232
    throw v0
.end method

.method public getInfo()Landroid/media/midi/MidiDeviceInfo;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@2
    return-object v0
.end method

.method public openInputPort(I)Landroid/media/midi/MidiInputPort;
    .locals 6
    .param p1, "portNumber"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 127
    iget-boolean v3, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 128
    return-object v5

    #@6
    .line 131
    :cond_0
    :try_start_0
    new-instance v2, Landroid/os/Binder;

    #@8
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    #@b
    .line 132
    .local v2, "token":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@d
    invoke-interface {v3, v2, p1}, Landroid/media/midi/IMidiDeviceServer;->openInputPort(Landroid/os/IBinder;I)Landroid/os/ParcelFileDescriptor;

    #@10
    move-result-object v1

    #@11
    .line 133
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    #@13
    .line 134
    return-object v5

    #@14
    .line 136
    :cond_1
    new-instance v3, Landroid/media/midi/MidiInputPort;

    #@16
    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@18
    invoke-direct {v3, v4, v2, v1, p1}, Landroid/media/midi/MidiInputPort;-><init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    return-object v3

    #@1c
    .line 137
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    #@1d
    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MidiDevice"

    #@20
    const-string/jumbo v4, "RemoteException in openInputPort"

    #@23
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 139
    return-object v5
.end method

.method public openOutputPort(I)Landroid/media/midi/MidiOutputPort;
    .locals 6
    .param p1, "portNumber"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 153
    iget-boolean v3, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 154
    return-object v5

    #@6
    .line 157
    :cond_0
    :try_start_0
    new-instance v2, Landroid/os/Binder;

    #@8
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    #@b
    .line 158
    .local v2, "token":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@d
    invoke-interface {v3, v2, p1}, Landroid/media/midi/IMidiDeviceServer;->openOutputPort(Landroid/os/IBinder;I)Landroid/os/ParcelFileDescriptor;

    #@10
    move-result-object v1

    #@11
    .line 159
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    #@13
    .line 160
    return-object v5

    #@14
    .line 162
    :cond_1
    new-instance v3, Landroid/media/midi/MidiOutputPort;

    #@16
    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@18
    invoke-direct {v3, v4, v2, v1, p1}, Landroid/media/midi/MidiOutputPort;-><init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    return-object v3

    #@1c
    .line 163
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    #@1d
    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MidiDevice"

    #@20
    const-string/jumbo v4, "RemoteException in openOutputPort"

    #@23
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 165
    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "MidiDevice: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@e
    invoke-virtual {v1}, Landroid/media/midi/MidiDeviceInfo;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method
