.class Lcom/android/server/usb/UsbMidiDevice$3;
.super Ljava/lang/Thread;
.source "UsbMidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMidiDevice;

.field final synthetic val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

.field final synthetic val$outputStreamF:Ljava/io/FileOutputStream;

.field final synthetic val$portF:I


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;Ljava/io/FileOutputStream;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbMidiDevice;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$eventSchedulerF"    # Lcom/android/internal/midi/MidiEventScheduler;
    .param p4, "val$outputStreamF"    # Ljava/io/FileOutputStream;
    .param p5, "val$portF"    # I

    #@0
    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$3;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    #@2
    iput-object p3, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    #@4
    iput-object p4, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$outputStreamF:Ljava/io/FileOutputStream;

    #@6
    iput p5, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$portF:I

    #@8
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    .line 256
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    #@2
    invoke-virtual {v3}, Lcom/android/internal/midi/MidiEventScheduler;->waitNextEvent()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    #@8
    .line 261
    .local v2, "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    if-nez v2, :cond_0

    #@a
    .line 271
    const-string/jumbo v3, "UsbMidiDevice"

    #@d
    const-string/jumbo v4, "output thread exit"

    #@10
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 252
    return-void

    #@14
    .line 265
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$outputStreamF:Ljava/io/FileOutputStream;

    #@16
    iget-object v4, v2, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    #@18
    iget v5, v2, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    #@1a
    const/4 v6, 0x0

    #@1b
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@1e
    .line 269
    :goto_1
    iget-object v3, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    #@20
    invoke-virtual {v3, v2}, Lcom/android/internal/midi/MidiEventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    #@23
    goto :goto_0

    #@24
    .line 266
    :catch_0
    move-exception v0

    #@25
    .line 267
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "UsbMidiDevice"

    #@28
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v5, "write failed for port "

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    iget v5, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$portF:I

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    goto :goto_1

    #@42
    .line 257
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :catch_1
    move-exception v1

    #@43
    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
