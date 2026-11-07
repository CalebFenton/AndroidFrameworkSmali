.class public Landroid/net/ConnectivityManager$PacketKeepalive;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PacketKeepalive"
.end annotation


# static fields
.field public static final greylist-max-o BINDER_DIED:I = -0xa

.field public static final greylist-max-o ERROR_HARDWARE_ERROR:I = -0x1f

.field public static final greylist-max-o ERROR_HARDWARE_UNSUPPORTED:I = -0x1e

.field public static final greylist-max-o ERROR_INVALID_INTERVAL:I = -0x18

.field public static final greylist-max-o ERROR_INVALID_IP_ADDRESS:I = -0x15

.field public static final greylist-max-o ERROR_INVALID_LENGTH:I = -0x17

.field public static final greylist-max-o ERROR_INVALID_NETWORK:I = -0x14

.field public static final greylist-max-o ERROR_INVALID_PORT:I = -0x16

.field public static final greylist-max-o MIN_INTERVAL:I = 0xa

.field public static final greylist-max-o NATT_PORT:I = 0x1194

.field public static final greylist-max-o NO_KEEPALIVE:I = -0x1

.field public static final greylist-max-o SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PacketKeepalive"


# instance fields
.field private final blacklist mCallback:Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final greylist-max-o mNetwork:Landroid/net/Network;

.field final synthetic blacklist this$0:Landroid/net/ConnectivityManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$95Vw8HKeSKvSnu95IrFc2o9Yz7g(Landroid/net/ConnectivityManager$PacketKeepalive;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ConnectivityManager$PacketKeepalive;->lambda$stop$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;
    .registers 1

    iget-object p0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mCallback:Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
    .registers 5
    .param p1, "this$0"    # Landroid/net/ConnectivityManager;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "callback"    # Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2488
    iput-object p1, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->this$0:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2489
    const-string v0, "network cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2490
    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2491
    iput-object p2, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mNetwork:Landroid/net/Network;

    .line 2492
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2493
    new-instance v0, Landroid/net/ConnectivityManager$PacketKeepalive$1;

    invoke-direct {v0, p0, p1, p3}, Landroid/net/ConnectivityManager$PacketKeepalive$1;-><init>(Landroid/net/ConnectivityManager$PacketKeepalive;Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V

    iput-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mCallback:Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;

    .line 2563
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;Landroid/net/ConnectivityManager-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/ConnectivityManager$PacketKeepalive;-><init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$stop$0()V
    .registers 4

    .line 2477
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->this$0:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->-$$Nest$fgetmService(Landroid/net/ConnectivityManager;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mCallback:Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->stopKeepalive(Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 2481
    nop

    .line 2482
    return-void

    .line 2478
    :catch_d
    move-exception v0

    .line 2479
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PacketKeepalive"

    const-string v2, "Error stopping packet keepalive: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2480
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public greylist-max-r stop()V
    .registers 3

    .line 2475
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroid/net/ConnectivityManager$PacketKeepalive$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/net/ConnectivityManager$PacketKeepalive$$ExternalSyntheticLambda0;-><init>(Landroid/net/ConnectivityManager$PacketKeepalive;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_b

    .line 2485
    goto :goto_c

    .line 2483
    :catch_b
    move-exception v0

    .line 2486
    :goto_c
    return-void
.end method
