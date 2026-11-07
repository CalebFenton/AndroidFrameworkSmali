.class Landroid/net/EthernetManager$2;
.super Landroid/net/connectivity/android/net/ITetheredInterfaceCallback$Stub;
.source "EthernetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/EthernetManager;->requestTetheredInterface(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$TetheredInterfaceCallback;)Landroid/net/EthernetManager$TetheredInterfaceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/net/EthernetManager$TetheredInterfaceCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/net/EthernetManager;Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$TetheredInterfaceCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/EthernetManager;
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

    .line 441
    iput-object p2, p0, Landroid/net/EthernetManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/EthernetManager$2;->val$callback:Landroid/net/EthernetManager$TetheredInterfaceCallback;

    invoke-direct {p0}, Landroid/net/connectivity/android/net/ITetheredInterfaceCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onAvailable$0(Landroid/net/EthernetManager$TetheredInterfaceCallback;Ljava/lang/String;)V
    .registers 2
    .param p0, "callback"    # Landroid/net/EthernetManager$TetheredInterfaceCallback;
    .param p1, "iface"    # Ljava/lang/String;

    .line 444
    invoke-interface {p0, p1}, Landroid/net/EthernetManager$TetheredInterfaceCallback;->onAvailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onUnavailable$1(Landroid/net/EthernetManager$TetheredInterfaceCallback;)V
    .registers 1
    .param p0, "callback"    # Landroid/net/EthernetManager$TetheredInterfaceCallback;

    .line 449
    invoke-interface {p0}, Landroid/net/EthernetManager$TetheredInterfaceCallback;->onUnavailable()V

    return-void
.end method


# virtual methods
.method public blacklist onAvailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;

    .line 444
    iget-object v0, p0, Landroid/net/EthernetManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/EthernetManager$2;->val$callback:Landroid/net/EthernetManager$TetheredInterfaceCallback;

    new-instance v2, Landroid/net/EthernetManager$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/net/EthernetManager$2$$ExternalSyntheticLambda1;-><init>(Landroid/net/EthernetManager$TetheredInterfaceCallback;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 445
    return-void
.end method

.method public blacklist onUnavailable()V
    .registers 4

    .line 449
    iget-object v0, p0, Landroid/net/EthernetManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/EthernetManager$2;->val$callback:Landroid/net/EthernetManager$TetheredInterfaceCallback;

    new-instance v2, Landroid/net/EthernetManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/net/EthernetManager$2$$ExternalSyntheticLambda0;-><init>(Landroid/net/EthernetManager$TetheredInterfaceCallback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 450
    return-void
.end method
