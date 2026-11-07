.class final Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;
.super Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver$Stub;
.source "EthernetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/EthernetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NetworkInterfaceOutcomeReceiver"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/String;",
            "Landroid/net/EthernetNetworkManagementException;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$T7RVYyTygVWznI_GxepbY4gJuNU(Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;->lambda$onResult$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gvzTi_tk556tdMXgEG-MU7tLaWg(Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;Landroid/net/EthernetNetworkManagementException;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;->lambda$onError$1(Landroid/net/EthernetNetworkManagementException;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/String;",
            "Landroid/net/EthernetNetworkManagementException;",
            ">;)V"
        }
    .end annotation

    .line 471
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/String;Landroid/net/EthernetNetworkManagementException;>;"
    invoke-direct {p0}, Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver$Stub;-><init>()V

    .line 472
    const-string v0, "Pass a non-null executor"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 473
    const-string v0, "Pass a non-null callback"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 474
    iput-object p1, p0, Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 475
    iput-object p2, p0, Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;->mCallback:Landroid/os/OutcomeReceiver;

    .line 476
    return-void
.end method

.method private synthetic blacklist lambda$onError$1(Landroid/net/EthernetNetworkManagementException;)V
    .registers 3
    .param p1, "e"    # Landroid/net/EthernetNetworkManagementException;

    .line 485
    iget-object v0, p0, Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onResult$0(Ljava/lang/String;)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;

    .line 480
    iget-object v0, p0, Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/net/EthernetNetworkManagementException;)V
    .registers 4
    .param p1, "e"    # Landroid/net/EthernetNetworkManagementException;

    .line 485
    iget-object v0, p0, Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;Landroid/net/EthernetNetworkManagementException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 486
    return-void
.end method

.method public blacklist onResult(Ljava/lang/String;)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 480
    iget-object v0, p0, Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver$$ExternalSyntheticLambda1;-><init>(Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 481
    return-void
.end method
