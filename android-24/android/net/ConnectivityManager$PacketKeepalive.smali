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
.field public static final BINDER_DIED:I = -0xa

.field public static final ERROR_HARDWARE_ERROR:I = -0x1f

.field public static final ERROR_HARDWARE_UNSUPPORTED:I = -0x1e

.field public static final ERROR_INVALID_INTERVAL:I = -0x18

.field public static final ERROR_INVALID_IP_ADDRESS:I = -0x15

.field public static final ERROR_INVALID_LENGTH:I = -0x17

.field public static final ERROR_INVALID_NETWORK:I = -0x14

.field public static final ERROR_INVALID_PORT:I = -0x16

.field public static final NATT_PORT:I = 0x1194

.field public static final NO_KEEPALIVE:I = -0x1

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PacketKeepalive"


# instance fields
.field private final mCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

.field private final mLooper:Landroid/os/Looper;

.field private final mMessenger:Landroid/os/Messenger;

.field private final mNetwork:Landroid/net/Network;

.field private volatile mSlot:Ljava/lang/Integer;

.field final synthetic this$0:Landroid/net/ConnectivityManager;


# direct methods
.method static synthetic -get0(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/os/Messenger;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mMessenger:Landroid/os/Messenger;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/lang/Integer;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mSlot:Ljava/lang/Integer;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/net/ConnectivityManager$PacketKeepalive;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mSlot:Ljava/lang/Integer;

    #@2
    return-object p1
.end method

.method private constructor <init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
    .locals 4
    .param p1, "this$0"    # Landroid/net/ConnectivityManager;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "callback"    # Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    #@0
    .prologue
    .line 1480
    iput-object p1, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->this$0:Landroid/net/ConnectivityManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1481
    const-string/jumbo v1, "network cannot be null"

    #@8
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 1482
    const-string/jumbo v1, "callback cannot be null"

    #@e
    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 1483
    iput-object p2, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mNetwork:Landroid/net/Network;

    #@13
    .line 1484
    iput-object p3, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    #@15
    .line 1485
    new-instance v0, Landroid/os/HandlerThread;

    #@17
    const-string/jumbo v1, "PacketKeepalive"

    #@1a
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@1d
    .line 1486
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@20
    .line 1487
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@23
    move-result-object v1

    #@24
    iput-object v1, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mLooper:Landroid/os/Looper;

    #@26
    .line 1488
    new-instance v1, Landroid/os/Messenger;

    #@28
    new-instance v2, Landroid/net/ConnectivityManager$PacketKeepalive$1;

    #@2a
    iget-object v3, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mLooper:Landroid/os/Looper;

    #@2c
    invoke-direct {v2, p0, v3}, Landroid/net/ConnectivityManager$PacketKeepalive$1;-><init>(Landroid/net/ConnectivityManager$PacketKeepalive;Landroid/os/Looper;)V

    #@2f
    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@32
    iput-object v1, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mMessenger:Landroid/os/Messenger;

    #@34
    .line 1480
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;Landroid/net/ConnectivityManager$PacketKeepalive;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ConnectivityManager;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "callback"    # Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/net/ConnectivityManager$PacketKeepalive;-><init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V

    #@3
    return-void
.end method


# virtual methods
.method public stop()V
    .locals 4

    #@0
    .prologue
    .line 1473
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->this$0:Landroid/net/ConnectivityManager;

    #@2
    invoke-static {v1}, Landroid/net/ConnectivityManager;->-get0(Landroid/net/ConnectivityManager;)Landroid/net/IConnectivityManager;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mNetwork:Landroid/net/Network;

    #@8
    iget-object v3, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mSlot:Ljava/lang/Integer;

    #@a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v3

    #@e
    invoke-interface {v1, v2, v3}, Landroid/net/IConnectivityManager;->stopKeepalive(Landroid/net/Network;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1471
    :goto_0
    return-void

    #@12
    .line 1474
    :catch_0
    move-exception v0

    #@13
    .line 1475
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PacketKeepalive"

    #@16
    const-string/jumbo v2, "Error stopping packet keepalive: "

    #@19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    .line 1476
    invoke-virtual {p0}, Landroid/net/ConnectivityManager$PacketKeepalive;->stopLooper()V

    #@1f
    goto :goto_0
.end method

.method stopLooper()V
    .locals 1

    #@0
    .prologue
    .line 1468
    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mLooper:Landroid/os/Looper;

    #@2
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    #@5
    .line 1467
    return-void
.end method
