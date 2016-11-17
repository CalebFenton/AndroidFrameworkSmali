.class public abstract Landroid/media/midi/MidiSender;
.super Ljava/lang/Object;
.source "MidiSender.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public connect(Landroid/media/midi/MidiReceiver;)V
    .locals 2
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    #@0
    .prologue
    .line 31
    if-nez p1, :cond_0

    #@2
    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "receiver null in MidiSender.connect"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 34
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/midi/MidiSender;->onConnect(Landroid/media/midi/MidiReceiver;)V

    #@e
    .line 30
    return-void
.end method

.method public disconnect(Landroid/media/midi/MidiReceiver;)V
    .locals 2
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    #@0
    .prologue
    .line 43
    if-nez p1, :cond_0

    #@2
    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "receiver null in MidiSender.disconnect"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/midi/MidiSender;->onDisconnect(Landroid/media/midi/MidiReceiver;)V

    #@e
    .line 42
    return-void
.end method

.method public abstract onConnect(Landroid/media/midi/MidiReceiver;)V
.end method

.method public abstract onDisconnect(Landroid/media/midi/MidiReceiver;)V
.end method
