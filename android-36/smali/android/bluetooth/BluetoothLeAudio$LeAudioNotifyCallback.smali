.class Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback;
.super Landroid/bluetooth/IBluetoothLeAudioCallback$Stub;
.source "BluetoothLeAudio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LeAudioNotifyCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothLeAudio;


# direct methods
.method private constructor blacklist <init>(Landroid/bluetooth/BluetoothLeAudio;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 186
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothLeAudioCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothLeAudio;Landroid/bluetooth/BluetoothLeAudio-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback;-><init>(Landroid/bluetooth/BluetoothLeAudio;)V

    return-void
.end method

.method static synthetic blacklist lambda$onBroadcastToUnicastFallbackGroupChanged$5(ILandroid/bluetooth/BluetoothLeAudio$Callback;)V
    .registers 2
    .param p0, "groupId"    # I
    .param p1, "cb"    # Landroid/bluetooth/BluetoothLeAudio$Callback;

    .line 219
    invoke-interface {p1, p0}, Landroid/bluetooth/BluetoothLeAudio$Callback;->onBroadcastToUnicastFallbackGroupChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onCodecConfigChanged$0(ILandroid/bluetooth/BluetoothLeAudioCodecStatus;Landroid/bluetooth/BluetoothLeAudio$Callback;)V
    .registers 3
    .param p0, "groupId"    # I
    .param p1, "status"    # Landroid/bluetooth/BluetoothLeAudioCodecStatus;
    .param p2, "cb"    # Landroid/bluetooth/BluetoothLeAudio$Callback;

    .line 189
    invoke-interface {p2, p0, p1}, Landroid/bluetooth/BluetoothLeAudio$Callback;->onCodecConfigChanged(ILandroid/bluetooth/BluetoothLeAudioCodecStatus;)V

    return-void
.end method

.method static synthetic blacklist lambda$onGroupNodeAdded$1(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeAudio$Callback;)V
    .registers 3
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "groupId"    # I
    .param p2, "cb"    # Landroid/bluetooth/BluetoothLeAudio$Callback;

    .line 195
    invoke-interface {p2, p0, p1}, Landroid/bluetooth/BluetoothLeAudio$Callback;->onGroupNodeAdded(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onGroupNodeRemoved$2(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeAudio$Callback;)V
    .registers 3
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "groupId"    # I
    .param p2, "cb"    # Landroid/bluetooth/BluetoothLeAudio$Callback;

    .line 201
    invoke-interface {p2, p0, p1}, Landroid/bluetooth/BluetoothLeAudio$Callback;->onGroupNodeRemoved(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onGroupStatusChanged$3(IILandroid/bluetooth/BluetoothLeAudio$Callback;)V
    .registers 3
    .param p0, "groupId"    # I
    .param p1, "groupStatus"    # I
    .param p2, "cb"    # Landroid/bluetooth/BluetoothLeAudio$Callback;

    .line 206
    invoke-interface {p2, p0, p1}, Landroid/bluetooth/BluetoothLeAudio$Callback;->onGroupStatusChanged(II)V

    return-void
.end method

.method static synthetic blacklist lambda$onGroupStreamStatusChanged$4(IILandroid/bluetooth/BluetoothLeAudio$Callback;)V
    .registers 3
    .param p0, "groupId"    # I
    .param p1, "groupStreamStatus"    # I
    .param p2, "cb"    # Landroid/bluetooth/BluetoothLeAudio$Callback;

    .line 212
    invoke-interface {p2, p0, p1}, Landroid/bluetooth/BluetoothLeAudio$Callback;->onGroupStreamStatusChanged(II)V

    return-void
.end method


# virtual methods
.method public blacklist onBroadcastToUnicastFallbackGroupChanged(I)V
    .registers 4
    .param p1, "groupId"    # I

    .line 217
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->leaudioBroadcastApiManagePrimaryGroup()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 218
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/BluetoothLeAudio;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 221
    :cond_14
    return-void
.end method

.method public blacklist onCodecConfigChanged(ILandroid/bluetooth/BluetoothLeAudioCodecStatus;)V
    .registers 5
    .param p1, "groupId"    # I
    .param p2, "status"    # Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    .line 189
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/BluetoothLeAudio;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback$$ExternalSyntheticLambda4;-><init>(ILandroid/bluetooth/BluetoothLeAudioCodecStatus;)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 190
    return-void
.end method

.method public blacklist onGroupNodeAdded(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "groupId"    # I

    .line 194
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothLeAudio;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 195
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/BluetoothLeAudio;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 196
    return-void
.end method

.method public blacklist onGroupNodeRemoved(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "groupId"    # I

    .line 200
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothLeAudio;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 201
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/BluetoothLeAudio;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 202
    return-void
.end method

.method public blacklist onGroupStatusChanged(II)V
    .registers 5
    .param p1, "groupId"    # I
    .param p2, "groupStatus"    # I

    .line 206
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/BluetoothLeAudio;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback$$ExternalSyntheticLambda5;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 207
    return-void
.end method

.method public blacklist onGroupStreamStatusChanged(II)V
    .registers 5
    .param p1, "groupId"    # I
    .param p2, "groupStreamStatus"    # I

    .line 211
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/BluetoothLeAudio;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback$$ExternalSyntheticLambda2;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 213
    return-void
.end method
