.class Landroid/bluetooth/BluetoothAdapter$10;
.super Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 2
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5073
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$10;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onPreferredAudioProfilesChanged$0(Landroid/bluetooth/BluetoothDevice;Landroid/os/Bundle;ILandroid/bluetooth/BluetoothAdapter$PreferredAudioProfilesChangedCallback;)V
    .registers 4
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "preferredAudioProfiles"    # Landroid/os/Bundle;
    .param p2, "status"    # I
    .param p3, "cb"    # Landroid/bluetooth/BluetoothAdapter$PreferredAudioProfilesChangedCallback;

    .line 5080
    invoke-interface {p3, p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$PreferredAudioProfilesChangedCallback;->onPreferredAudioProfilesChanged(Landroid/bluetooth/BluetoothDevice;Landroid/os/Bundle;I)V

    return-void
.end method


# virtual methods
.method public blacklist onPreferredAudioProfilesChanged(Landroid/bluetooth/BluetoothDevice;Landroid/os/Bundle;I)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferredAudioProfiles"    # Landroid/os/Bundle;
    .param p3, "status"    # I

    .line 5078
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$10;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmAudioProfilesCallbackWrapper(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$10$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Landroid/bluetooth/BluetoothAdapter$10$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Bundle;I)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 5082
    return-void
.end method
