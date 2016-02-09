.class public Lcom/android/commands/hid/Device;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/hid/Device$DeviceHandler;,
        Lcom/android/commands/hid/Device$DeviceCallback;
    }
.end annotation


# static fields
.field private static final MIN_WAIT_FOR_FIRST_EVENT:I = 0x96

.field private static final MSG_CLOSE_DEVICE:I = 0x3

.field private static final MSG_OPEN_DEVICE:I = 0x1

.field private static final MSG_SEND_REPORT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HidDevice"


# instance fields
.field private final mCond:Ljava/lang/Object;

.field private mEventTime:J

.field private final mHandler:Lcom/android/commands/hid/Device$DeviceHandler;

.field private final mId:I

.field private final mThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Lcom/android/commands/hid/Device;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/commands/hid/Device;->mCond:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/commands/hid/Device;)Lcom/android/commands/hid/Device$DeviceHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/commands/hid/Device;->mHandler:Lcom/android/commands/hid/Device$DeviceHandler;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;III[BLandroid/os/MessageQueue;Lcom/android/commands/hid/Device$DeviceCallback;)J
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "id"    # I
    .param p2, "vid"    # I
    .param p3, "pid"    # I
    .param p4, "descriptor"    # [B
    .param p5, "queue"    # Landroid/os/MessageQueue;
    .param p6, "callback"    # Lcom/android/commands/hid/Device$DeviceCallback;

    #@0
    .prologue
    invoke-static/range {p0 .. p6}, Lcom/android/commands/hid/Device;->nativeOpenDevice(Ljava/lang/String;III[BLandroid/os/MessageQueue;Lcom/android/commands/hid/Device$DeviceCallback;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap1(J)V
    .locals 0
    .param p0, "ptr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/commands/hid/Device;->nativeCloseDevice(J)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(J[B)V
    .locals 0
    .param p0, "ptr"    # J
    .param p2, "data"    # [B

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/commands/hid/Device;->nativeSendReport(J[B)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 52
    const-string/jumbo v0, "hidcommand_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II[B[B)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "vid"    # I
    .param p4, "pid"    # I
    .param p5, "descriptor"    # [B
    .param p6, "report"    # [B

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    new-instance v1, Ljava/lang/Object;

    #@5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/commands/hid/Device;->mCond:Ljava/lang/Object;

    #@a
    .line 61
    iput p1, p0, Lcom/android/commands/hid/Device;->mId:I

    #@c
    .line 62
    new-instance v1, Landroid/os/HandlerThread;

    #@e
    const-string/jumbo v2, "HidDeviceHandler"

    #@11
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@14
    iput-object v1, p0, Lcom/android/commands/hid/Device;->mThread:Landroid/os/HandlerThread;

    #@16
    .line 63
    iget-object v1, p0, Lcom/android/commands/hid/Device;->mThread:Landroid/os/HandlerThread;

    #@18
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    #@1b
    .line 64
    new-instance v1, Lcom/android/commands/hid/Device$DeviceHandler;

    #@1d
    iget-object v2, p0, Lcom/android/commands/hid/Device;->mThread:Landroid/os/HandlerThread;

    #@1f
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, p0, v2}, Lcom/android/commands/hid/Device$DeviceHandler;-><init>(Lcom/android/commands/hid/Device;Landroid/os/Looper;)V

    #@26
    iput-object v1, p0, Lcom/android/commands/hid/Device;->mHandler:Lcom/android/commands/hid/Device$DeviceHandler;

    #@28
    .line 65
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@2b
    move-result-object v0

    #@2c
    .line 66
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@2e
    .line 67
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@30
    .line 68
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@32
    .line 69
    if-eqz p2, :cond_0

    #@34
    .line 70
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@36
    .line 74
    :goto_0
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@38
    .line 75
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@3a
    .line 76
    iget-object v1, p0, Lcom/android/commands/hid/Device;->mHandler:Lcom/android/commands/hid/Device$DeviceHandler;

    #@3c
    const/4 v2, 0x1

    #@3d
    invoke-virtual {v1, v2, v0}, Lcom/android/commands/hid/Device$DeviceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@44
    .line 77
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@47
    move-result-wide v2

    #@48
    const-wide/16 v4, 0x96

    #@4a
    add-long/2addr v2, v4

    #@4b
    iput-wide v2, p0, Lcom/android/commands/hid/Device;->mEventTime:J

    #@4d
    .line 60
    return-void

    #@4e
    .line 72
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    const-string/jumbo v2, ":"

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    const-string/jumbo v2, ":"

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@73
    goto :goto_0
.end method

.method private static native nativeCloseDevice(J)V
.end method

.method private static native nativeOpenDevice(Ljava/lang/String;III[BLandroid/os/MessageQueue;Lcom/android/commands/hid/Device$DeviceCallback;)J
.end method

.method private static native nativeSendReport(J[B)V
.end method


# virtual methods
.method public addDelay(I)V
    .locals 4
    .param p1, "delay"    # I

    #@0
    .prologue
    .line 86
    iget-wide v0, p0, Lcom/android/commands/hid/Device;->mEventTime:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    iput-wide v0, p0, Lcom/android/commands/hid/Device;->mEventTime:J

    #@6
    .line 85
    return-void
.end method

.method public close()V
    .locals 8

    #@0
    .prologue
    .line 90
    iget-object v2, p0, Lcom/android/commands/hid/Device;->mHandler:Lcom/android/commands/hid/Device$DeviceHandler;

    #@2
    const/4 v3, 0x3

    #@3
    invoke-virtual {v2, v3}, Lcom/android/commands/hid/Device$DeviceHandler;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v1

    #@7
    .line 91
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    #@8
    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    #@b
    .line 92
    iget-object v2, p0, Lcom/android/commands/hid/Device;->mHandler:Lcom/android/commands/hid/Device$DeviceHandler;

    #@d
    iget-wide v4, p0, Lcom/android/commands/hid/Device;->mEventTime:J

    #@f
    const-wide/16 v6, 0x1

    #@11
    add-long/2addr v4, v6

    #@12
    invoke-virtual {v2, v1, v4, v5}, Lcom/android/commands/hid/Device$DeviceHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@15
    .line 94
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/hid/Device;->mCond:Ljava/lang/Object;

    #@17
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 95
    :try_start_1
    iget-object v2, p0, Lcom/android/commands/hid/Device;->mCond:Ljava/lang/Object;

    #@1a
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    :try_start_2
    monitor-exit v3

    #@1e
    .line 89
    :goto_0
    return-void

    #@1f
    .line 94
    :catchall_0
    move-exception v2

    #@20
    monitor-exit v3

    #@21
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    #@22
    .line 97
    :catch_0
    move-exception v0

    #@23
    .local v0, "ignore":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public sendReport([B)V
    .locals 4
    .param p1, "report"    # [B

    #@0
    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/commands/hid/Device;->mHandler:Lcom/android/commands/hid/Device$DeviceHandler;

    #@2
    const/4 v2, 0x2

    #@3
    invoke-virtual {v1, v2, p1}, Lcom/android/commands/hid/Device$DeviceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 82
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/commands/hid/Device;->mHandler:Lcom/android/commands/hid/Device$DeviceHandler;

    #@9
    iget-wide v2, p0, Lcom/android/commands/hid/Device;->mEventTime:J

    #@b
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/commands/hid/Device$DeviceHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@e
    .line 80
    return-void
.end method
