.class public final synthetic Landroid/bluetooth/BluetoothPan$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/TetheringManager$TetheredInterfaceCallback;

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/TetheringManager$TetheredInterfaceCallback;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothPan$1$$ExternalSyntheticLambda1;->f$0:Landroid/net/TetheringManager$TetheredInterfaceCallback;

    iput-object p2, p0, Landroid/bluetooth/BluetoothPan$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$1$$ExternalSyntheticLambda1;->f$0:Landroid/net/TetheringManager$TetheredInterfaceCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothPan$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothPan$1;->lambda$onAvailable$0(Landroid/net/TetheringManager$TetheredInterfaceCallback;Ljava/lang/String;)V

    return-void
.end method
