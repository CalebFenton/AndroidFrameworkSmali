.class Lcom/android/server/usb/UsbMidiDevice$2;
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

.field final synthetic val$outputReceivers:[Landroid/media/midi/MidiReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;[Landroid/media/midi/MidiReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbMidiDevice;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$outputReceivers"    # [Landroid/media/midi/MidiReceiver;

    #@0
    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    #@2
    iput-object p3, p0, Lcom/android/server/usb/UsbMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    #@4
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    #@0
    .prologue
    .line 203
    const/16 v0, 0x200

    #@2
    new-array v1, v0, [B

    #@4
    .line 207
    .local v1, "buffer":[B
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@7
    move-result-wide v4

    #@8
    .line 208
    .local v4, "timestamp":J
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    #@a
    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->-get2(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;

    #@d
    move-result-object v10

    #@e
    monitor-enter v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    #@f
    .line 209
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    #@11
    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->-get1(Lcom/android/server/usb/UsbMidiDevice;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_0

    #@17
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1

    #@18
    .line 240
    .end local v4    # "timestamp":J
    :goto_1
    const-string/jumbo v0, "UsbMidiDevice"

    #@1b
    const-string/jumbo v2, "input thread exit"

    #@1e
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 202
    return-void

    #@22
    .line 212
    .restart local v4    # "timestamp":J
    :cond_0
    const/4 v8, 0x0

    #@23
    .local v8, "index":I
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    #@25
    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->-get3(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    #@28
    move-result-object v0

    #@29
    array-length v0, v0

    #@2a
    if-ge v8, v0, :cond_1

    #@2c
    .line 213
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    #@2e
    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->-get3(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    #@31
    move-result-object v0

    #@32
    aget-object v9, v0, v8

    #@34
    .line 214
    .local v9, "pfd":Landroid/system/StructPollfd;
    iget-short v0, v9, Landroid/system/StructPollfd;->revents:S

    #@36
    sget v2, Landroid/system/OsConstants;->POLLERR:I

    #@38
    .line 215
    sget v11, Landroid/system/OsConstants;->POLLHUP:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3a
    .line 214
    or-int/2addr v2, v11

    #@3b
    and-int/2addr v0, v2

    #@3c
    if-eqz v0, :cond_2

    #@3e
    .end local v9    # "pfd":Landroid/system/StructPollfd;
    :cond_1
    :try_start_4
    monitor-exit v10

    #@3f
    .line 233
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    #@41
    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->-get3(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    #@44
    move-result-object v0

    #@45
    const/4 v2, -0x1

    #@46
    invoke-static {v0, v2}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_1

    #@49
    goto :goto_0

    #@4a
    .line 235
    .end local v4    # "timestamp":J
    .end local v8    # "index":I
    :catch_0
    move-exception v7

    #@4b
    .line 236
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v0, "UsbMidiDevice"

    #@4e
    const-string/jumbo v2, "reader thread exiting"

    #@51
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    goto :goto_1

    #@55
    .line 217
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "timestamp":J
    .restart local v8    # "index":I
    .restart local v9    # "pfd":Landroid/system/StructPollfd;
    :cond_2
    :try_start_5
    iget-short v0, v9, Landroid/system/StructPollfd;->revents:S

    #@57
    sget v2, Landroid/system/OsConstants;->POLLIN:I

    #@59
    and-int/2addr v0, v2

    #@5a
    if-eqz v0, :cond_3

    #@5c
    .line 219
    const/4 v0, 0x0

    #@5d
    iput-short v0, v9, Landroid/system/StructPollfd;->revents:S

    #@5f
    .line 221
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    #@61
    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->-get0(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;

    #@64
    move-result-object v0

    #@65
    array-length v0, v0

    #@66
    add-int/lit8 v0, v0, -0x1

    #@68
    if-eq v8, v0, :cond_1

    #@6a
    .line 226
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    #@6c
    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->-get0(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;

    #@6f
    move-result-object v0

    #@70
    aget-object v0, v0, v8

    #@72
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    #@75
    move-result v3

    #@76
    .line 227
    .local v3, "count":I
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    #@78
    aget-object v0, v0, v8

    #@7a
    const/4 v2, 0x0

    #@7b
    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@7e
    .line 212
    .end local v3    # "count":I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    #@80
    goto :goto_2

    #@81
    .line 208
    .end local v8    # "index":I
    .end local v9    # "pfd":Landroid/system/StructPollfd;
    :catchall_0
    move-exception v0

    #@82
    :try_start_6
    monitor-exit v10

    #@83
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_1

    #@84
    .line 237
    .end local v4    # "timestamp":J
    :catch_1
    move-exception v6

    #@85
    .line 238
    .local v6, "e":Landroid/system/ErrnoException;
    const-string/jumbo v0, "UsbMidiDevice"

    #@88
    const-string/jumbo v2, "reader thread exiting"

    #@8b
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    goto :goto_1
.end method
