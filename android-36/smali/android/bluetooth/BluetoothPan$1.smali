.class Landroid/bluetooth/BluetoothPan$1;
.super Landroid/bluetooth/IBluetoothPanCallback$Stub;
.source "BluetoothPan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothPan;->requestTetheredInterface(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheredInterfaceCallback;)Landroid/net/TetheringManager$TetheredInterfaceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/net/TetheringManager$TetheredInterfaceCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothPan;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheredInterfaceCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothPan;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 558
    iput-object p2, p0, Landroid/bluetooth/BluetoothPan$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/bluetooth/BluetoothPan$1;->val$callback:Landroid/net/TetheringManager$TetheredInterfaceCallback;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothPanCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onAvailable$0(Landroid/net/TetheringManager$TetheredInterfaceCallback;Ljava/lang/String;)V
    .registers 2
    .param p0, "callback"    # Landroid/net/TetheringManager$TetheredInterfaceCallback;
    .param p1, "iface"    # Ljava/lang/String;

    .line 562
    invoke-interface {p0, p1}, Landroid/net/TetheringManager$TetheredInterfaceCallback;->onAvailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onUnavailable$1(Landroid/net/TetheringManager$TetheredInterfaceCallback;)V
    .registers 1
    .param p0, "callback"    # Landroid/net/TetheringManager$TetheredInterfaceCallback;

    .line 568
    invoke-interface {p0}, Landroid/net/TetheringManager$TetheredInterfaceCallback;->onUnavailable()V

    return-void
.end method


# virtual methods
.method public blacklist onAvailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;

    .line 562
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/bluetooth/BluetoothPan$1;->val$callback:Landroid/net/TetheringManager$TetheredInterfaceCallback;

    new-instance v2, Landroid/bluetooth/BluetoothPan$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/bluetooth/BluetoothPan$1$$ExternalSyntheticLambda1;-><init>(Landroid/net/TetheringManager$TetheredInterfaceCallback;Ljava/lang/String;)V

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 563
    return-void
.end method

.method public blacklist onUnavailable()V
    .registers 4

    .line 568
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/bluetooth/BluetoothPan$1;->val$callback:Landroid/net/TetheringManager$TetheredInterfaceCallback;

    new-instance v2, Landroid/bluetooth/BluetoothPan$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/bluetooth/BluetoothPan$1$$ExternalSyntheticLambda0;-><init>(Landroid/net/TetheringManager$TetheredInterfaceCallback;)V

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 569
    return-void
.end method
