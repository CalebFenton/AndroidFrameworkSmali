.class public final synthetic Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Landroid/bluetooth/BluetoothLeAudioCodecStatus;


# direct methods
.method public synthetic constructor blacklist <init>(ILandroid/bluetooth/BluetoothLeAudioCodecStatus;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback$$ExternalSyntheticLambda4;->f$0:I

    iput-object p2, p0, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback$$ExternalSyntheticLambda4;->f$1:Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback$$ExternalSyntheticLambda4;->f$0:I

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback$$ExternalSyntheticLambda4;->f$1:Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    check-cast p1, Landroid/bluetooth/BluetoothLeAudio$Callback;

    invoke-static {v0, v1, p1}, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback;->lambda$onCodecConfigChanged$0(ILandroid/bluetooth/BluetoothLeAudioCodecStatus;Landroid/bluetooth/BluetoothLeAudio$Callback;)V

    return-void
.end method
