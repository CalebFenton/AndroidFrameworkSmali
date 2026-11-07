.class Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy;
.super Landroid/net/wifi/ILocalOnlyConnectionStatusListener$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalOnlyConnectionStatusListenerProxy"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/net/wifi/WifiManager$LocalOnlyConnectionFailureListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$AU_Ebzd83petuf5b4crYZCIr4jM(Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy;Landroid/net/wifi/WifiNetworkSpecifier;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy;->lambda$onConnectionStatus$0(Landroid/net/wifi/WifiNetworkSpecifier;I)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$LocalOnlyConnectionFailureListener;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$LocalOnlyConnectionFailureListener;

    .line 10040
    invoke-direct {p0}, Landroid/net/wifi/ILocalOnlyConnectionStatusListener$Stub;-><init>()V

    .line 10041
    iput-object p1, p0, Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 10042
    iput-object p2, p0, Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy;->mListener:Landroid/net/wifi/WifiManager$LocalOnlyConnectionFailureListener;

    .line 10043
    return-void
.end method

.method private synthetic blacklist lambda$onConnectionStatus$0(Landroid/net/wifi/WifiNetworkSpecifier;I)V
    .registers 4
    .param p1, "networkSpecifier"    # Landroid/net/wifi/WifiNetworkSpecifier;
    .param p2, "failureReason"    # I

    .line 10050
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy;->mListener:Landroid/net/wifi/WifiManager$LocalOnlyConnectionFailureListener;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/WifiManager$LocalOnlyConnectionFailureListener;->onConnectionFailed(Landroid/net/wifi/WifiNetworkSpecifier;I)V

    return-void
.end method


# virtual methods
.method public blacklist onConnectionStatus(Landroid/net/wifi/WifiNetworkSpecifier;I)V
    .registers 5
    .param p1, "networkSpecifier"    # Landroid/net/wifi/WifiNetworkSpecifier;
    .param p2, "failureReason"    # I

    .line 10048
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10049
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy;Landroid/net/wifi/WifiNetworkSpecifier;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10051
    return-void
.end method
