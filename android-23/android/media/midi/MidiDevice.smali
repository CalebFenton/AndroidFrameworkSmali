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
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    #@9
    .line 96
    iput-object p1, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@b
    .line 97
    iput-object p2, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@d
    .line 98
    iput-object p3, p0, Landroid/media/midi/MidiDevice;->mMidiManager:Landroid/media/midi/IMidiManager;

    #@f
    .line 99
    iput-object p4, p0, Landroid/media/midi/MidiDevice;->mClientToken:Landroid/os/IBinder;

    #@11
    .line 100
    iput-object p5, p0, Landroid/media/midi/MidiDevice;->mDeviceToken:Landroid/os/IBinder;

    #@13
    .line 101
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    #@15
    const-string/jumbo v1, "close"

    #@18
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@1b
    .line 95
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
    .line 196
    iget-object v2, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    #@2
    monitor-enter v2

    #@3
    .line 197
    :try_start_0
    iget-object v1, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    #@5
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 199
    :try_start_1
    iget-object v1, p0, Landroid/media/midi/MidiDevice;->mMidiManager:Landroid/media/midi/IMidiManager;

    #@a
    iget-object v3, p0, Landroid/media/midi/MidiDevice;->mClientToken:Landroid/os/IBinder;

    #@c
    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceToken:Landroid/os/IBinder;

    #@e
    invoke-interface {v1, v3, v4}, Landroid/media/midi/IMidiManager;->closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    :goto_0
    monitor-exit v2

    #@12
    .line 195
    return-void

    #@13
    .line 200
    :catch_0
    move-exception v0

    #@14
    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "MidiDevice"

    #@17
    const-string/jumbo v3, "RemoteException in closeDevice"

    #@1a
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    .line 196
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1
.end method

.method public connectPorts(Landroid/media/midi/MidiInputPort;I)Landroid/media/midi/MidiDevice$MidiConnection;
    .locals 6
    .param p1, "inputPort"    # Landroid/media/midi/MidiInputPort;
    .param p2, "outputPortNumber"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 174
    if-ltz p2, :cond_0

    #@3
    iget-object v3, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@5
    invoke-virtual {v3}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    #@8
    move-result v3

    #@9
    if-lt p2, v3, :cond_1

    #@b
    .line 175
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v4, "outputPortNumber out of range"

    #@10
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v3

    #@14
    .line 178
    :cond_1
    invoke-virtual {p1}, Landroid/media/midi/MidiInputPort;->claimFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@17
    move-result-object v1

    #@18
    .line 179
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_2

    #@1a
    .line 180
    return-object v5

    #@1b
    .line 183
    :cond_2
    :try_start_0
    new-instance v2, Landroid/os/Binder;

    #@1d
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    #@20
    .line 184
    .local v2, "token":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@22
    invoke-interface {v3, v2, v1, p2}, Landroid/media/midi/IMidiDeviceServer;->connectPorts(Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)V

    #@25
    .line 186
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@28
    .line 187
    new-instance v3, Landroid/media/midi/MidiDevice$MidiConnection;

    #@2a
    invoke-direct {v3, p0, v2, p1}, Landroid/media/midi/MidiDevice$MidiConnection;-><init>(Landroid/media/midi/MidiDevice;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    return-object v3

    #@2e
    .line 188
    .end local v2    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    #@2f
    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MidiDevice"

    #@32
    const-string/jumbo v4, "RemoteException in connectPorts"

    #@35
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 190
    return-object v5
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
    .line 209
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@5
    .line 210
    invoke-virtual {p0}, Landroid/media/midi/MidiDevice;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 212
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 207
    return-void

    #@c
    .line 211
    :catchall_0
    move-exception v0

    #@d
    .line 212
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@10
    .line 211
    throw v0
.end method

.method public getInfo()Landroid/media/midi/MidiDeviceInfo;
    .locals 1

    #@0
    .prologue
    .line 110
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
    .line 126
    :try_start_0
    new-instance v2, Landroid/os/Binder;

    #@3
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    #@6
    .line 127
    .local v2, "token":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@8
    invoke-interface {v3, v2, p1}, Landroid/media/midi/IMidiDeviceServer;->openInputPort(Landroid/os/IBinder;I)Landroid/os/ParcelFileDescriptor;

    #@b
    move-result-object v1

    #@c
    .line 128
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_0

    #@e
    .line 129
    return-object v5

    #@f
    .line 131
    :cond_0
    new-instance v3, Landroid/media/midi/MidiInputPort;

    #@11
    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@13
    invoke-direct {v3, v4, v2, v1, p1}, Landroid/media/midi/MidiInputPort;-><init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    return-object v3

    #@17
    .line 132
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    #@18
    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MidiDevice"

    #@1b
    const-string/jumbo v4, "RemoteException in openInputPort"

    #@1e
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 134
    return-object v5
.end method

.method public openOutputPort(I)Landroid/media/midi/MidiOutputPort;
    .locals 6
    .param p1, "portNumber"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 149
    :try_start_0
    new-instance v2, Landroid/os/Binder;

    #@3
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    #@6
    .line 150
    .local v2, "token":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@8
    invoke-interface {v3, v2, p1}, Landroid/media/midi/IMidiDeviceServer;->openOutputPort(Landroid/os/IBinder;I)Landroid/os/ParcelFileDescriptor;

    #@b
    move-result-object v1

    #@c
    .line 151
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_0

    #@e
    .line 152
    return-object v5

    #@f
    .line 154
    :cond_0
    new-instance v3, Landroid/media/midi/MidiOutputPort;

    #@11
    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@13
    invoke-direct {v3, v4, v2, v1, p1}, Landroid/media/midi/MidiOutputPort;-><init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    return-object v3

    #@17
    .line 155
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    #@18
    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MidiDevice"

    #@1b
    const-string/jumbo v4, "RemoteException in openOutputPort"

    #@1e
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 157
    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 218
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
