.class public Landroid/media/midi/MidiManager$DeviceCallback;
.super Ljava/lang/Object;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 2
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .line 188
    return-void
.end method

.method public whitelist onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 2
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .line 196
    return-void
.end method

.method public whitelist onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    .registers 2
    .param p1, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .line 204
    return-void
.end method
