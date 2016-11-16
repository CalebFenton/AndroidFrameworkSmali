.class public final Landroid/media/midi/MidiOutputPort;
.super Landroid/media/midi/MidiSender;
.source "MidiOutputPort.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiOutputPort$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MidiOutputPort"


# instance fields
.field private mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

.field private final mDispatcher:Lcom/android/internal/midi/MidiDispatcher;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private final mInputStream:Ljava/io/FileInputStream;

.field private mIsClosed:Z

.field private final mPortNumber:I

.field private final mThread:Ljava/lang/Thread;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Landroid/media/midi/MidiOutputPort;)Lcom/android/internal/midi/MidiDispatcher;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort;->mDispatcher:Lcom/android/internal/midi/MidiDispatcher;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort;->mInputStream:Ljava/io/FileInputStream;

    #@2
    return-object v0
.end method

.method constructor <init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)V
    .locals 2
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "portNumber"    # I

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Landroid/media/midi/MidiSender;-><init>()V

    #@3
    .line 44
    new-instance v0, Lcom/android/internal/midi/MidiDispatcher;

    #@5
    invoke-direct {v0}, Lcom/android/internal/midi/MidiDispatcher;-><init>()V

    #@8
    iput-object v0, p0, Landroid/media/midi/MidiOutputPort;->mDispatcher:Lcom/android/internal/midi/MidiDispatcher;

    #@a
    .line 46
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/media/midi/MidiOutputPort;->mGuard:Ldalvik/system/CloseGuard;

    #@10
    .line 51
    new-instance v0, Landroid/media/midi/MidiOutputPort$1;

    #@12
    invoke-direct {v0, p0}, Landroid/media/midi/MidiOutputPort$1;-><init>(Landroid/media/midi/MidiOutputPort;)V

    #@15
    iput-object v0, p0, Landroid/media/midi/MidiOutputPort;->mThread:Ljava/lang/Thread;

    #@17
    .line 95
    iput-object p1, p0, Landroid/media/midi/MidiOutputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@19
    .line 96
    iput-object p2, p0, Landroid/media/midi/MidiOutputPort;->mToken:Landroid/os/IBinder;

    #@1b
    .line 97
    iput p4, p0, Landroid/media/midi/MidiOutputPort;->mPortNumber:I

    #@1d
    .line 98
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    #@1f
    invoke-direct {v0, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    #@22
    iput-object v0, p0, Landroid/media/midi/MidiOutputPort;->mInputStream:Ljava/io/FileInputStream;

    #@24
    .line 99
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort;->mThread:Ljava/lang/Thread;

    #@26
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@29
    .line 100
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort;->mGuard:Ldalvik/system/CloseGuard;

    #@2b
    const-string/jumbo v1, "close"

    #@2e
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@31
    .line 94
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
    .line 104
    invoke-direct {p0, v0, v0, p1, p2}, Landroid/media/midi/MidiOutputPort;-><init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)V

    #@4
    .line 103
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    iget-object v2, p0, Landroid/media/midi/MidiOutputPort;->mGuard:Ldalvik/system/CloseGuard;

    #@2
    monitor-enter v2

    #@3
    .line 129
    :try_start_0
    iget-boolean v1, p0, Landroid/media/midi/MidiOutputPort;->mIsClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    monitor-exit v2

    #@8
    return-void

    #@9
    .line 131
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort;->mGuard:Ldalvik/system/CloseGuard;

    #@b
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    #@e
    .line 132
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort;->mInputStream:Ljava/io/FileInputStream;

    #@10
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    #@13
    .line 133
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 135
    :try_start_2
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@19
    iget-object v3, p0, Landroid/media/midi/MidiOutputPort;->mToken:Landroid/os/IBinder;

    #@1b
    invoke-interface {v1, v3}, Landroid/media/midi/IMidiDeviceServer;->closePort(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1e
    .line 140
    :cond_1
    :goto_0
    const/4 v1, 0x1

    #@1f
    :try_start_3
    iput-boolean v1, p0, Landroid/media/midi/MidiOutputPort;->mIsClosed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 127
    return-void

    #@23
    .line 136
    :catch_0
    move-exception v0

    #@24
    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v1, "MidiOutputPort"

    #@27
    const-string/jumbo v3, "RemoteException in MidiOutputPort.close()"

    #@2a
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit v2

    #@30
    throw v1
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
    .line 147
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort;->mGuard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@5
    .line 149
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/media/midi/MidiOutputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@8
    .line 150
    invoke-virtual {p0}, Landroid/media/midi/MidiOutputPort;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 152
    invoke-super {p0}, Landroid/media/midi/MidiSender;->finalize()V

    #@e
    .line 145
    return-void

    #@f
    .line 151
    :catchall_0
    move-exception v0

    #@10
    .line 152
    invoke-super {p0}, Landroid/media/midi/MidiSender;->finalize()V

    #@13
    .line 151
    throw v0
.end method

.method public final getPortNumber()I
    .locals 1

    #@0
    .prologue
    .line 113
    iget v0, p0, Landroid/media/midi/MidiOutputPort;->mPortNumber:I

    #@2
    return v0
.end method

.method public onConnect(Landroid/media/midi/MidiReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort;->mDispatcher:Lcom/android/internal/midi/MidiDispatcher;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/media/midi/MidiSender;->connect(Landroid/media/midi/MidiReceiver;)V

    #@9
    .line 117
    return-void
.end method

.method public onDisconnect(Landroid/media/midi/MidiReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort;->mDispatcher:Lcom/android/internal/midi/MidiDispatcher;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/media/midi/MidiSender;->disconnect(Landroid/media/midi/MidiReceiver;)V

    #@9
    .line 122
    return-void
.end method
