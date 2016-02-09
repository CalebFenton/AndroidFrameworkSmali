.class final Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;
.super Landroid/media/midi/MidiReceiver;
.source "UsbMidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMidiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputReceiverProxy"
.end annotation


# instance fields
.field private mReceiver:Landroid/media/midi/MidiReceiver;

.field final synthetic this$0:Lcom/android/server/usb/UsbMidiDevice;


# direct methods
.method private constructor <init>(Lcom/android/server/usb/UsbMidiDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbMidiDevice;

    #@0
    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    #@2
    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usb/UsbMidiDevice;Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbMidiDevice;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;-><init>(Lcom/android/server/usb/UsbMidiDevice;)V

    #@3
    return-void
.end method


# virtual methods
.method public onSend([BIIJ)V
    .locals 6
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
    .line 121
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    #@2
    .line 122
    .local v0, "receiver":Landroid/media/midi/MidiReceiver;
    if-eqz v0, :cond_0

    #@4
    move-object v1, p1

    #@5
    move v2, p2

    #@6
    move v3, p3

    #@7
    move-wide v4, p4

    #@8
    .line 123
    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    #@b
    .line 120
    :cond_0
    return-void
.end method

.method public setReceiver(Landroid/media/midi/MidiReceiver;)V
    .locals 0
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    #@0
    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    #@2
    .line 127
    return-void
.end method
