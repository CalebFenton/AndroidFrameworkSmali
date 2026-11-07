.class Landroid/net/wifi/WifiManager$OnWifiNetworkStateChangedProxy;
.super Landroid/net/wifi/IWifiNetworkStateChangedListener$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnWifiNetworkStateChangedProxy"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mListener:Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$vbGJGDQoUyPIErSYYFIhd22qcXc(Landroid/net/wifi/WifiManager$OnWifiNetworkStateChangedProxy;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiManager$OnWifiNetworkStateChangedProxy;->lambda$onWifiNetworkStateChanged$0(II)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener;

    .line 4969
    invoke-direct {p0}, Landroid/net/wifi/IWifiNetworkStateChangedListener$Stub;-><init>()V

    .line 4970
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4971
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4972
    iput-object p1, p0, Landroid/net/wifi/WifiManager$OnWifiNetworkStateChangedProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 4973
    iput-object p2, p0, Landroid/net/wifi/WifiManager$OnWifiNetworkStateChangedProxy;->mListener:Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener;

    .line 4974
    return-void
.end method

.method private synthetic blacklist lambda$onWifiNetworkStateChanged$0(II)V
    .registers 4
    .param p1, "cmmRole"    # I
    .param p2, "state"    # I

    .line 4981
    iget-object v0, p0, Landroid/net/wifi/WifiManager$OnWifiNetworkStateChangedProxy;->mListener:Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener;->onWifiNetworkStateChanged(II)V

    return-void
.end method


# virtual methods
.method public blacklist onWifiNetworkStateChanged(II)V
    .registers 5
    .param p1, "cmmRole"    # I
    .param p2, "state"    # I

    .line 4978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnWifiNetworkStateChangedProxy: onWifiNetworkStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4980
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4981
    iget-object v0, p0, Landroid/net/wifi/WifiManager$OnWifiNetworkStateChangedProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$OnWifiNetworkStateChangedProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$OnWifiNetworkStateChangedProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$OnWifiNetworkStateChangedProxy;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4982
    return-void
.end method
