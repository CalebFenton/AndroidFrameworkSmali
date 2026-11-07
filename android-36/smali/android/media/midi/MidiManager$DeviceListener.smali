.class Landroid/media/midi/MidiManager$DeviceListener;
.super Landroid/media/midi/IMidiDeviceListener$Stub;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceListener"
.end annotation


# instance fields
.field private final greylist-max-o mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mTransport:I


# direct methods
.method public static synthetic blacklist $r8$lambda$55zLVo_2B3oXqWHJ-kIEpRAY4gk(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/midi/MidiManager$DeviceListener;->lambda$onDeviceAdded$0(Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6TWravWln6sb6xU5QT5QGRNrbEw(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/midi/MidiManager$DeviceListener;->lambda$onDeviceRemoved$1(Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vknAtf8G0OElGhJjReqU1yz8oK4(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/midi/MidiManager$DeviceListener;->lambda$onDeviceStatusChanged$2(Landroid/media/midi/MidiDeviceStatus;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$DeviceCallback;Ljava/util/concurrent/Executor;I)V
    .registers 5
    .param p2, "callback"    # Landroid/media/midi/MidiManager$DeviceCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "transport"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Landroid/media/midi/IMidiDeviceListener$Stub;-><init>()V

    .line 119
    iput-object p2, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    .line 120
    iput-object p3, p0, Landroid/media/midi/MidiManager$DeviceListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 121
    iput p4, p0, Landroid/media/midi/MidiManager$DeviceListener;->mTransport:I

    .line 122
    return-void
.end method

.method private synthetic blacklist lambda$onDeviceAdded$0(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 3
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .line 129
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDeviceRemoved$1(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 3
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .line 141
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDeviceStatusChanged$2(Landroid/media/midi/MidiDeviceStatus;)V
    .registers 3
    .param p1, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .line 152
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V

    return-void
.end method

.method private blacklist shouldInvokeCallback(Landroid/media/midi/MidiDeviceInfo;)Z
    .registers 7
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .line 167
    iget v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mTransport:I

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_10

    .line 168
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getDefaultProtocol()I

    move-result v0

    if-eq v0, v2, :cond_f

    move v3, v4

    :cond_f
    return v3

    .line 169
    :cond_10
    iget v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mTransport:I

    if-ne v0, v4, :cond_1c

    .line 170
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getDefaultProtocol()I

    move-result v0

    if-ne v0, v2, :cond_1b

    move v3, v4

    :cond_1b
    return v3

    .line 172
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid transport type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/midi/MidiManager$DeviceListener;->mTransport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MidiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return v3
.end method


# virtual methods
.method public greylist-max-o onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 4
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .line 126
    invoke-direct {p0, p1}, Landroid/media/midi/MidiManager$DeviceListener;->shouldInvokeCallback(Landroid/media/midi/MidiDeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 127
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_15

    .line 128
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda1;-><init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1a

    .line 131
    :cond_15
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V

    .line 134
    :cond_1a
    :goto_1a
    return-void
.end method

.method public greylist-max-o onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 4
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .line 138
    invoke-direct {p0, p1}, Landroid/media/midi/MidiManager$DeviceListener;->shouldInvokeCallback(Landroid/media/midi/MidiDeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 139
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_15

    .line 140
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda2;-><init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1a

    .line 143
    :cond_15
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V

    .line 146
    :cond_1a
    :goto_1a
    return-void
.end method

.method public greylist-max-o onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    .registers 4
    .param p1, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .line 150
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_f

    .line 151
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda0;-><init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceStatus;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_14

    .line 154
    :cond_f
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V

    .line 156
    :goto_14
    return-void
.end method
