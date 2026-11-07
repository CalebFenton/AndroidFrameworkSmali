.class Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;
.super Landroid/bluetooth/IBluetoothVolumeControlCallback$Stub;
.source "BluetoothVolumeControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothVolumeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeControlNotifyCallback"
.end annotation


# instance fields
.field private final blacklist mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothVolumeControl$Callback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothVolumeControl;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothVolumeControl;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothVolumeControl$Callback;",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 178
    .local p2, "callbackMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/bluetooth/BluetoothVolumeControl$Callback;Ljava/util/concurrent/Executor;>;"
    iput-object p1, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothVolumeControlCallback$Stub;-><init>()V

    .line 179
    iput-object p2, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;->mCallbackMap:Ljava/util/Map;

    .line 180
    return-void
.end method

.method private blacklist forEach(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/bluetooth/BluetoothVolumeControl$Callback;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/bluetooth/BluetoothVolumeControl$Callback;>;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;->mCallbackMap:Ljava/util/Map;

    monitor-enter v0

    .line 184
    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;->mCallbackMap:Ljava/util/Map;

    new-instance v2, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method static synthetic blacklist lambda$forEach$0(Ljava/util/function/Consumer;Landroid/bluetooth/BluetoothVolumeControl$Callback;)V
    .registers 2
    .param p0, "consumer"    # Ljava/util/function/Consumer;
    .param p1, "callback"    # Landroid/bluetooth/BluetoothVolumeControl$Callback;

    .line 186
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$forEach$1(Ljava/util/function/Consumer;Landroid/bluetooth/BluetoothVolumeControl$Callback;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p0, "consumer"    # Ljava/util/function/Consumer;
    .param p1, "callback"    # Landroid/bluetooth/BluetoothVolumeControl$Callback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 186
    new-instance v0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;Landroid/bluetooth/BluetoothVolumeControl$Callback;)V

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDeviceVolumeChanged$5(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothVolumeControl$Callback;)V
    .registers 3
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "volume"    # I
    .param p2, "cb"    # Landroid/bluetooth/BluetoothVolumeControl$Callback;

    .line 220
    invoke-interface {p2, p0, p1}, Landroid/bluetooth/BluetoothVolumeControl$Callback;->onDeviceVolumeChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onVolumeOffsetAudioDescriptionChanged$4(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;Landroid/bluetooth/BluetoothVolumeControl$Callback;)V
    .registers 4
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "instanceId"    # I
    .param p2, "audioDescription"    # Ljava/lang/String;
    .param p3, "cb"    # Landroid/bluetooth/BluetoothVolumeControl$Callback;

    .line 213
    invoke-interface {p3, p0, p1, p2}, Landroid/bluetooth/BluetoothVolumeControl$Callback;->onVolumeOffsetAudioDescriptionChanged(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onVolumeOffsetAudioLocationChanged$3(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothVolumeControl$Callback;)V
    .registers 4
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "instanceId"    # I
    .param p2, "audioLocation"    # I
    .param p3, "cb"    # Landroid/bluetooth/BluetoothVolumeControl$Callback;

    .line 203
    invoke-interface {p3, p0, p1, p2}, Landroid/bluetooth/BluetoothVolumeControl$Callback;->onVolumeOffsetAudioLocationChanged(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic blacklist lambda$onVolumeOffsetChanged$2(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothVolumeControl$Callback;)V
    .registers 4
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "instanceId"    # I
    .param p2, "volumeOffset"    # I
    .param p3, "cb"    # Landroid/bluetooth/BluetoothVolumeControl$Callback;

    .line 194
    invoke-interface {p3, p0, p1, p2}, Landroid/bluetooth/BluetoothVolumeControl$Callback;->onVolumeOffsetChanged(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method


# virtual methods
.method public blacklist onDeviceVolumeChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "volume"    # I

    .line 219
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothVolumeControl;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothVolumeControl;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 220
    new-instance v0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;->forEach(Ljava/util/function/Consumer;)V

    .line 221
    return-void
.end method

.method public blacklist onVolumeOffsetAudioDescriptionChanged(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "instanceId"    # I
    .param p3, "audioDescription"    # Ljava/lang/String;

    .line 210
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothVolumeControl;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothVolumeControl;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 211
    new-instance v0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;->forEach(Ljava/util/function/Consumer;)V

    .line 215
    return-void
.end method

.method public blacklist onVolumeOffsetAudioLocationChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "instanceId"    # I
    .param p3, "audioLocation"    # I

    .line 200
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothVolumeControl;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothVolumeControl;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 201
    new-instance v0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;->forEach(Ljava/util/function/Consumer;)V

    .line 205
    return-void
.end method

.method public blacklist onVolumeOffsetChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "instanceId"    # I
    .param p3, "volumeOffset"    # I

    .line 193
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothVolumeControl;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothVolumeControl;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 194
    new-instance v0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;->forEach(Ljava/util/function/Consumer;)V

    .line 195
    return-void
.end method
