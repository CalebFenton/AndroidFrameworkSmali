.class abstract Landroid/media/midi/MidiDeviceServer$PortClient;
.super Ljava/lang/Object;
.source "MidiDeviceServer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PortClient"
.end annotation


# instance fields
.field final greylist-max-o mToken:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, Landroid/media/midi/MidiDeviceServer$PortClient;->mToken:Landroid/os/IBinder;

    .line 117
    const/4 p1, 0x0

    :try_start_6
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 120
    goto :goto_e

    .line 118
    :catch_a
    move-exception p1

    .line 119
    .local p1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    .line 121
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 1

    .line 131
    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    .line 132
    return-void
.end method

.method abstract greylist-max-o close()V
.end method

.method greylist-max-o getInputPort()Landroid/media/midi/MidiInputPort;
    .registers 2

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method
