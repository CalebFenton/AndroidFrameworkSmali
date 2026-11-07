.class Landroid/net/wifi/WifiManager$WifiStateChangedListenerProxy;
.super Landroid/net/wifi/IWifiStateChangedListener$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiStateChangedListenerProxy"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mListener:Landroid/net/wifi/WifiManager$WifiStateChangedListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$v8DTLcglgZKdcDeNgQsHMPtwqko(Landroid/net/wifi/WifiManager$WifiStateChangedListenerProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$WifiStateChangedListenerProxy;->lambda$onWifiStateChanged$0()V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiStateChangedListener;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$WifiStateChangedListener;

    .line 5493
    invoke-direct {p0}, Landroid/net/wifi/IWifiStateChangedListener$Stub;-><init>()V

    .line 5494
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5495
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5496
    iput-object p1, p0, Landroid/net/wifi/WifiManager$WifiStateChangedListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5497
    iput-object p2, p0, Landroid/net/wifi/WifiManager$WifiStateChangedListenerProxy;->mListener:Landroid/net/wifi/WifiManager$WifiStateChangedListener;

    .line 5498
    return-void
.end method

.method private synthetic blacklist lambda$onWifiStateChanged$0()V
    .registers 2

    .line 5504
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiStateChangedListenerProxy;->mListener:Landroid/net/wifi/WifiManager$WifiStateChangedListener;

    invoke-interface {v0}, Landroid/net/wifi/WifiManager$WifiStateChangedListener;->onWifiStateChanged()V

    return-void
.end method


# virtual methods
.method public blacklist onWifiStateChanged()V
    .registers 3

    .line 5502
    const-string v0, "WifiManager"

    const-string v1, "WifiStateChangedListenerProxy: onWifiStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5503
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5504
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiStateChangedListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$WifiStateChangedListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiManager$WifiStateChangedListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$WifiStateChangedListenerProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5505
    return-void
.end method
