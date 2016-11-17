.class Lcom/android/server/usb/UsbMidiDevice$1;
.super Ljava/lang/Object;
.source "UsbMidiDevice.java"

# interfaces
.implements Landroid/media/midi/MidiDeviceServer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMidiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMidiDevice;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMidiDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbMidiDevice;

    #@0
    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 0

    #@0
    .prologue
    .line 110
    return-void
.end method

.method public onDeviceStatusChanged(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .locals 7
    .param p1, "server"    # Landroid/media/midi/MidiDeviceServer;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    #@0
    .prologue
    .line 79
    invoke-virtual {p2}, Landroid/media/midi/MidiDeviceStatus;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    #@3
    move-result-object v0

    #@4
    .line 80
    .local v0, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    #@7
    move-result v3

    #@8
    .line 81
    .local v3, "inputPorts":I
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    #@b
    move-result v4

    #@c
    .line 82
    .local v4, "outputPorts":I
    const/4 v1, 0x0

    #@d
    .line 84
    .local v1, "hasOpenPorts":Z
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@10
    .line 85
    invoke-virtual {p2, v2}, Landroid/media/midi/MidiDeviceStatus;->isInputPortOpen(I)Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_4

    #@16
    .line 86
    const/4 v1, 0x1

    #@17
    .line 91
    :cond_0
    if-nez v1, :cond_1

    #@19
    .line 92
    const/4 v2, 0x0

    #@1a
    :goto_1
    if-ge v2, v4, :cond_1

    #@1c
    .line 93
    invoke-virtual {p2, v2}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    #@1f
    move-result v5

    #@20
    if-lez v5, :cond_5

    #@22
    .line 94
    const/4 v1, 0x1

    #@23
    .line 100
    :cond_1
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    #@25
    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->-get2(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;

    #@28
    move-result-object v6

    #@29
    monitor-enter v6

    #@2a
    .line 101
    if-eqz v1, :cond_2

    #@2c
    :try_start_0
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    #@2e
    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->-get1(Lcom/android/server/usb/UsbMidiDevice;)Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_6

    #@34
    .line 103
    :cond_2
    if-nez v1, :cond_3

    #@36
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    #@38
    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->-get1(Lcom/android/server/usb/UsbMidiDevice;)Z

    #@3b
    move-result v5

    #@3c
    if-eqz v5, :cond_3

    #@3e
    .line 104
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    #@40
    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->-wrap1(Lcom/android/server/usb/UsbMidiDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    :cond_3
    :goto_2
    monitor-exit v6

    #@44
    .line 78
    return-void

    #@45
    .line 84
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@47
    goto :goto_0

    #@48
    .line 92
    :cond_5
    add-int/lit8 v2, v2, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 102
    :cond_6
    :try_start_1
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    #@4d
    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->-wrap0(Lcom/android/server/usb/UsbMidiDevice;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    goto :goto_2

    #@51
    .line 100
    :catchall_0
    move-exception v5

    #@52
    monitor-exit v6

    #@53
    throw v5
.end method
