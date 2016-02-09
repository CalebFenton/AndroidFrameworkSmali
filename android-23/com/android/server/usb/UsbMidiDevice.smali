.class public final Lcom/android/server/usb/UsbMidiDevice;
.super Ljava/lang/Object;
.source "UsbMidiDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;,
        Lcom/android/server/usb/UsbMidiDevice$1;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x200

.field private static final TAG:Ljava/lang/String; = "UsbMidiDevice"


# instance fields
.field private final mAlsaCard:I

.field private final mAlsaDevice:I

.field private final mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field private mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

.field private mFileDescriptors:[Ljava/io/FileDescriptor;

.field private final mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

.field private mInputStreams:[Ljava/io/FileInputStream;

.field private mIsOpen:Z

.field private final mLock:Ljava/lang/Object;

.field private mOutputStreams:[Ljava/io/FileOutputStream;

.field private mPipeFD:I

.field private mPollFDs:[Landroid/system/StructPollfd;

.field private mServer:Landroid/media/midi/MidiDeviceServer;

.field private final mSubdeviceCount:I


# direct methods
.method static synthetic -get0(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/usb/UsbMidiDevice;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/usb/UsbMidiDevice;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/usb/UsbMidiDevice;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->closeLocked()V

    #@3
    return-void
.end method

.method private constructor <init>(III)V
    .locals 5
    .param p1, "card"    # I
    .param p2, "device"    # I
    .param p3, "subdeviceCount"    # I

    #@0
    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    new-instance v2, Ljava/lang/Object;

    #@5
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    #@a
    .line 73
    const/4 v2, -0x1

    #@b
    iput v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mPipeFD:I

    #@d
    .line 75
    new-instance v2, Lcom/android/server/usb/UsbMidiDevice$1;

    #@f
    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbMidiDevice$1;-><init>(Lcom/android/server/usb/UsbMidiDevice;)V

    #@12
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    #@14
    .line 150
    iput p1, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    #@16
    .line 151
    iput p2, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    #@18
    .line 152
    iput p3, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    #@1a
    .line 155
    move v0, p3

    #@1b
    .line 156
    .local v0, "inputCount":I
    new-array v2, v0, [Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    #@1d
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    #@1f
    .line 157
    const/4 v1, 0x0

    #@20
    .local v1, "port":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@22
    .line 158
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    #@24
    new-instance v3, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    #@26
    const/4 v4, 0x0

    #@27
    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;-><init>(Lcom/android/server/usb/UsbMidiDevice;Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;)V

    #@2a
    aput-object v3, v2, v1

    #@2c
    .line 157
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 149
    :cond_0
    return-void
.end method

.method private closeLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 310
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 311
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    #@9
    aget-object v1, v1, v0

    #@b
    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    #@e
    .line 312
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    #@10
    aget-object v1, v1, v0

    #@12
    invoke-virtual {v1}, Lcom/android/internal/midi/MidiEventScheduler;->close()V

    #@15
    .line 310
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 314
    :cond_0
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    #@1a
    .line 316
    const/4 v0, 0x0

    #@1b
    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    #@1d
    array-length v1, v1

    #@1e
    if-ge v0, v1, :cond_1

    #@20
    .line 317
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    #@22
    aget-object v1, v1, v0

    #@24
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@27
    .line 316
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 319
    :cond_1
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    #@2c
    .line 321
    const/4 v0, 0x0

    #@2d
    :goto_2
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    #@2f
    array-length v1, v1

    #@30
    if-ge v0, v1, :cond_2

    #@32
    .line 322
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    #@34
    aget-object v1, v1, v0

    #@36
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@39
    .line 321
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_2

    #@3c
    .line 324
    :cond_2
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    #@3e
    .line 327
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    #@40
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbMidiDevice;->nativeClose([Ljava/io/FileDescriptor;)V

    #@43
    .line 328
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    #@45
    .line 330
    const/4 v1, 0x0

    #@46
    iput-boolean v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    #@48
    .line 309
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "properties"    # Landroid/os/Bundle;
    .param p2, "card"    # I
    .param p3, "device"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 134
    invoke-static {p2, p3}, Lcom/android/server/usb/UsbMidiDevice;->nativeGetSubdeviceCount(II)I

    #@4
    move-result v1

    #@5
    .line 135
    .local v1, "subDeviceCount":I
    if-gtz v1, :cond_0

    #@7
    .line 136
    const-string/jumbo v2, "UsbMidiDevice"

    #@a
    const-string/jumbo v3, "nativeGetSubdeviceCount failed"

    #@d
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 137
    return-object v4

    #@11
    .line 140
    :cond_0
    new-instance v0, Lcom/android/server/usb/UsbMidiDevice;

    #@13
    invoke-direct {v0, p2, p3, v1}, Lcom/android/server/usb/UsbMidiDevice;-><init>(III)V

    #@16
    .line 141
    .local v0, "midiDevice":Lcom/android/server/usb/UsbMidiDevice;
    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/UsbMidiDevice;->register(Landroid/content/Context;Landroid/os/Bundle;)Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_1

    #@1c
    .line 142
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1f
    .line 143
    const-string/jumbo v2, "UsbMidiDevice"

    #@22
    const-string/jumbo v3, "createDeviceServer failed"

    #@25
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 144
    return-object v4

    #@29
    .line 146
    :cond_1
    return-object v0
.end method

.method private native nativeClose([Ljava/io/FileDescriptor;)V
.end method

.method private static native nativeGetSubdeviceCount(II)I
.end method

.method private native nativeOpen(III)[Ljava/io/FileDescriptor;
.end method

.method private openLocked()Z
    .locals 15

    #@0
    .prologue
    .line 164
    iget v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    #@2
    iget v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    #@4
    iget v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    #@6
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/usb/UsbMidiDevice;->nativeOpen(III)[Ljava/io/FileDescriptor;

    #@9
    move-result-object v7

    #@a
    .line 165
    .local v7, "fileDescriptors":[Ljava/io/FileDescriptor;
    if-nez v7, :cond_0

    #@c
    .line 166
    const-string/jumbo v0, "UsbMidiDevice"

    #@f
    const-string/jumbo v1, "nativeOpen failed"

    #@12
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 167
    const/4 v0, 0x0

    #@16
    return v0

    #@17
    .line 170
    :cond_0
    iput-object v7, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    #@19
    .line 171
    array-length v9, v7

    #@1a
    .line 174
    .local v9, "inputCount":I
    array-length v0, v7

    #@1b
    add-int/lit8 v10, v0, -0x1

    #@1d
    .line 176
    .local v10, "outputCount":I
    new-array v0, v9, [Landroid/system/StructPollfd;

    #@1f
    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    #@21
    .line 177
    new-array v0, v9, [Ljava/io/FileInputStream;

    #@23
    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    #@25
    .line 178
    const/4 v8, 0x0

    #@26
    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_1

    #@28
    .line 179
    aget-object v6, v7, v8

    #@2a
    .line 180
    .local v6, "fd":Ljava/io/FileDescriptor;
    new-instance v12, Landroid/system/StructPollfd;

    #@2c
    invoke-direct {v12}, Landroid/system/StructPollfd;-><init>()V

    #@2f
    .line 181
    .local v12, "pollfd":Landroid/system/StructPollfd;
    iput-object v6, v12, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    #@31
    .line 182
    sget v0, Landroid/system/OsConstants;->POLLIN:I

    #@33
    int-to-short v0, v0

    #@34
    iput-short v0, v12, Landroid/system/StructPollfd;->events:S

    #@36
    .line 183
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    #@38
    aput-object v12, v0, v8

    #@3a
    .line 184
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    #@3c
    new-instance v1, Ljava/io/FileInputStream;

    #@3e
    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@41
    aput-object v1, v0, v8

    #@43
    .line 178
    add-int/lit8 v8, v8, 0x1

    #@45
    goto :goto_0

    #@46
    .line 187
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local v12    # "pollfd":Landroid/system/StructPollfd;
    :cond_1
    new-array v0, v10, [Ljava/io/FileOutputStream;

    #@48
    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    #@4a
    .line 188
    new-array v0, v10, [Lcom/android/internal/midi/MidiEventScheduler;

    #@4c
    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    #@4e
    .line 189
    const/4 v8, 0x0

    #@4f
    :goto_1
    if-ge v8, v10, :cond_2

    #@51
    .line 190
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    #@53
    new-instance v1, Ljava/io/FileOutputStream;

    #@55
    aget-object v2, v7, v8

    #@57
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@5a
    aput-object v1, v0, v8

    #@5c
    .line 192
    new-instance v14, Lcom/android/internal/midi/MidiEventScheduler;

    #@5e
    invoke-direct {v14}, Lcom/android/internal/midi/MidiEventScheduler;-><init>()V

    #@61
    .line 193
    .local v14, "scheduler":Lcom/android/internal/midi/MidiEventScheduler;
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    #@63
    aput-object v14, v0, v8

    #@65
    .line 194
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    #@67
    aget-object v0, v0, v8

    #@69
    invoke-virtual {v14}, Lcom/android/internal/midi/MidiEventScheduler;->getReceiver()Landroid/media/midi/MidiReceiver;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    #@70
    .line 189
    add-int/lit8 v8, v8, 0x1

    #@72
    goto :goto_1

    #@73
    .line 197
    .end local v14    # "scheduler":Lcom/android/internal/midi/MidiEventScheduler;
    :cond_2
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    #@75
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    #@78
    move-result-object v11

    #@79
    .line 200
    .local v11, "outputReceivers":[Landroid/media/midi/MidiReceiver;
    new-instance v0, Lcom/android/server/usb/UsbMidiDevice$2;

    #@7b
    const-string/jumbo v1, "UsbMidiDevice input thread"

    #@7e
    invoke-direct {v0, p0, v1, v11}, Lcom/android/server/usb/UsbMidiDevice$2;-><init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;[Landroid/media/midi/MidiReceiver;)V

    #@81
    invoke-virtual {v0}, Lcom/android/server/usb/UsbMidiDevice$2;->start()V

    #@84
    .line 245
    const/4 v13, 0x0

    #@85
    .local v13, "port":I
    :goto_2
    if-ge v13, v10, :cond_3

    #@87
    .line 246
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    #@89
    aget-object v3, v0, v13

    #@8b
    .line 247
    .local v3, "eventSchedulerF":Lcom/android/internal/midi/MidiEventScheduler;
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    #@8d
    aget-object v4, v0, v13

    #@8f
    .line 248
    .local v4, "outputStreamF":Ljava/io/FileOutputStream;
    move v5, v13

    #@90
    .line 250
    .local v5, "portF":I
    new-instance v0, Lcom/android/server/usb/UsbMidiDevice$3;

    #@92
    new-instance v1, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v2, "UsbMidiDevice output thread "

    #@9a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v1

    #@9e
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v2

    #@a6
    move-object v1, p0

    #@a7
    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbMidiDevice$3;-><init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;Ljava/io/FileOutputStream;I)V

    #@aa
    invoke-virtual {v0}, Lcom/android/server/usb/UsbMidiDevice$3;->start()V

    #@ad
    .line 245
    add-int/lit8 v13, v13, 0x1

    #@af
    goto :goto_2

    #@b0
    .line 276
    .end local v3    # "eventSchedulerF":Lcom/android/internal/midi/MidiEventScheduler;
    .end local v4    # "outputStreamF":Ljava/io/FileOutputStream;
    .end local v5    # "portF":I
    :cond_3
    const/4 v0, 0x1

    #@b1
    iput-boolean v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    #@b3
    .line 277
    const/4 v0, 0x1

    #@b4
    return v0
.end method

.method private register(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 281
    const-string/jumbo v1, "midi"

    #@6
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/media/midi/MidiManager;

    #@c
    .line 282
    .local v0, "midiManager":Landroid/media/midi/MidiManager;
    if-nez v0, :cond_0

    #@e
    .line 283
    const-string/jumbo v1, "UsbMidiDevice"

    #@11
    const-string/jumbo v2, "No MidiManager in UsbMidiDevice.create()"

    #@14
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 284
    return v8

    #@18
    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    #@1a
    iget v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    #@1c
    .line 288
    iget-object v7, p0, Lcom/android/server/usb/UsbMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    #@1e
    move-object v4, v3

    #@1f
    move-object v5, p2

    #@20
    .line 287
    invoke-virtual/range {v0 .. v7}, Landroid/media/midi/MidiManager;->createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;ILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;

    #@23
    move-result-object v1

    #@24
    iput-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    #@26
    .line 289
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    #@28
    if-nez v1, :cond_1

    #@2a
    .line 290
    return v8

    #@2b
    .line 293
    :cond_1
    return v6
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 299
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 300
    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->closeLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit v1

    #@b
    .line 304
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 305
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    #@11
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@14
    .line 297
    :cond_1
    return-void

    #@15
    .line 298
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method
