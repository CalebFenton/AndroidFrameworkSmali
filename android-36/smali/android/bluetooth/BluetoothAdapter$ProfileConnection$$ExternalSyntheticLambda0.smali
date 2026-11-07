.class public final synthetic Landroid/bluetooth/BluetoothAdapter$ProfileConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothAdapter$ProfileConnection;

.field public final synthetic blacklist f$1:Landroid/bluetooth/BluetoothProfile;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter$ProfileConnection;Landroid/bluetooth/BluetoothProfile;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$ProfileConnection$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothAdapter$ProfileConnection;

    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$ProfileConnection$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/BluetoothProfile;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$ProfileConnection$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothAdapter$ProfileConnection;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$ProfileConnection$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/BluetoothProfile;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->$r8$lambda$hMSj6DHUqt7YX73SazN4nT4TGpw(Landroid/bluetooth/BluetoothAdapter$ProfileConnection;Landroid/bluetooth/BluetoothProfile;)V

    return-void
.end method
