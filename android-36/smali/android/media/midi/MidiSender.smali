.class public abstract Landroid/media/midi/MidiSender;
.super Ljava/lang/Object;
.source "MidiSender.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist connect(Landroid/media/midi/MidiReceiver;)V
    .registers 4
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    .line 31
    if-eqz p1, :cond_6

    .line 34
    invoke-virtual {p0, p1}, Landroid/media/midi/MidiSender;->onConnect(Landroid/media/midi/MidiReceiver;)V

    .line 35
    return-void

    .line 32
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "receiver null in MidiSender.connect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist disconnect(Landroid/media/midi/MidiReceiver;)V
    .registers 4
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    .line 43
    if-eqz p1, :cond_6

    .line 46
    invoke-virtual {p0, p1}, Landroid/media/midi/MidiSender;->onDisconnect(Landroid/media/midi/MidiReceiver;)V

    .line 47
    return-void

    .line 44
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "receiver null in MidiSender.disconnect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist onConnect(Landroid/media/midi/MidiReceiver;)V
.end method

.method public abstract whitelist onDisconnect(Landroid/media/midi/MidiReceiver;)V
.end method
