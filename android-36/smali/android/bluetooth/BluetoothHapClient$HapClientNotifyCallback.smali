.class Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback;
.super Landroid/bluetooth/IBluetoothHapClientCallback$Stub;
.source "BluetoothHapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HapClientNotifyCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothHapClient;


# direct methods
.method private constructor blacklist <init>(Landroid/bluetooth/BluetoothHapClient;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 242
    iput-object p1, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHapClientCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothHapClient-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPresetInfoChanged$3(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;ILandroid/bluetooth/BluetoothHapClient$Callback;)V
    .registers 4
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "presets"    # Ljava/util/List;
    .param p2, "status"    # I
    .param p3, "cb"    # Landroid/bluetooth/BluetoothHapClient$Callback;

    .line 264
    invoke-interface {p3, p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient$Callback;->onPresetInfoChanged(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onPresetSelected$0(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothHapClient$Callback;)V
    .registers 4
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "presetIndex"    # I
    .param p2, "reason"    # I
    .param p3, "cb"    # Landroid/bluetooth/BluetoothHapClient$Callback;

    .line 246
    invoke-interface {p3, p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient$Callback;->onPresetSelected(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic blacklist lambda$onPresetSelectionFailed$1(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothHapClient$Callback;)V
    .registers 3
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "status"    # I
    .param p2, "cb"    # Landroid/bluetooth/BluetoothHapClient$Callback;

    .line 252
    invoke-interface {p2, p0, p1}, Landroid/bluetooth/BluetoothHapClient$Callback;->onPresetSelectionFailed(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onPresetSelectionForGroupFailed$2(IILandroid/bluetooth/BluetoothHapClient$Callback;)V
    .registers 3
    .param p0, "groupId"    # I
    .param p1, "status"    # I
    .param p2, "cb"    # Landroid/bluetooth/BluetoothHapClient$Callback;

    .line 257
    invoke-interface {p2, p0, p1}, Landroid/bluetooth/BluetoothHapClient$Callback;->onPresetSelectionForGroupFailed(II)V

    return-void
.end method

.method static synthetic blacklist lambda$onSetPresetNameFailed$4(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothHapClient$Callback;)V
    .registers 3
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "status"    # I
    .param p2, "cb"    # Landroid/bluetooth/BluetoothHapClient$Callback;

    .line 270
    invoke-interface {p2, p0, p1}, Landroid/bluetooth/BluetoothHapClient$Callback;->onSetPresetNameFailed(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSetPresetNameForGroupFailed$5(IILandroid/bluetooth/BluetoothHapClient$Callback;)V
    .registers 3
    .param p0, "hapGroupId"    # I
    .param p1, "status"    # I
    .param p2, "cb"    # Landroid/bluetooth/BluetoothHapClient$Callback;

    .line 275
    invoke-interface {p2, p0, p1}, Landroid/bluetooth/BluetoothHapClient$Callback;->onSetPresetNameForGroupFailed(II)V

    return-void
.end method


# virtual methods
.method public blacklist onPresetInfoChanged(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;I)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothHapPresetInfo;",
            ">;I)V"
        }
    .end annotation

    .line 263
    .local p2, "presets":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHapPresetInfo;>;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothHapClient;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 264
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/BluetoothHapClient;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2, p3}, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 265
    return-void
.end method

.method public blacklist onPresetSelected(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "presetIndex"    # I
    .param p3, "reason"    # I

    .line 245
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothHapClient;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 246
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/BluetoothHapClient;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2, p3}, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda5;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 247
    return-void
.end method

.method public blacklist onPresetSelectionFailed(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I

    .line 251
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothHapClient;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 252
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/BluetoothHapClient;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 253
    return-void
.end method

.method public blacklist onPresetSelectionForGroupFailed(II)V
    .registers 5
    .param p1, "groupId"    # I
    .param p2, "status"    # I

    .line 257
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/BluetoothHapClient;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 258
    return-void
.end method

.method public blacklist onSetPresetNameFailed(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I

    .line 269
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothHapClient;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 270
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/BluetoothHapClient;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 271
    return-void
.end method

.method public blacklist onSetPresetNameForGroupFailed(II)V
    .registers 5
    .param p1, "hapGroupId"    # I
    .param p2, "status"    # I

    .line 275
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/BluetoothHapClient;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 276
    return-void
.end method
