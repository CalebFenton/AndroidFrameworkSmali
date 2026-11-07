.class public final synthetic Landroid/bluetooth/BluetoothAdapter$10$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic blacklist f$1:Landroid/os/Bundle;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Bundle;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$10$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$10$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iput p3, p0, Landroid/bluetooth/BluetoothAdapter$10$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$10$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$10$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iget v2, p0, Landroid/bluetooth/BluetoothAdapter$10$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Landroid/bluetooth/BluetoothAdapter$PreferredAudioProfilesChangedCallback;

    invoke-static {v0, v1, v2, p1}, Landroid/bluetooth/BluetoothAdapter$10;->lambda$onPreferredAudioProfilesChanged$0(Landroid/bluetooth/BluetoothDevice;Landroid/os/Bundle;ILandroid/bluetooth/BluetoothAdapter$PreferredAudioProfilesChangedCallback;)V

    return-void
.end method
