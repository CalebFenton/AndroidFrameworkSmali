.class Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListenerProxy;
.super Landroid/net/wifi/ISuggestionConnectionStatusListener$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionConnectionStatusListenerProxy"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$xxL1YS4SIyEugBiDvT0nUPEYvQg(Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListenerProxy;Landroid/net/wifi/WifiNetworkSuggestion;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListenerProxy;->lambda$onConnectionStatus$0(Landroid/net/wifi/WifiNetworkSuggestion;I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListener;)V
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 10001
    invoke-direct {p0}, Landroid/net/wifi/ISuggestionConnectionStatusListener$Stub;-><init>()V

    .line 10002
    iput-object p2, p0, Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 10003
    iput-object p3, p0, Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListenerProxy;->mListener:Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListener;

    .line 10004
    return-void
.end method

.method private synthetic blacklist lambda$onConnectionStatus$0(Landroid/net/wifi/WifiNetworkSuggestion;I)V
    .registers 4
    .param p1, "wifiNetworkSuggestion"    # Landroid/net/wifi/WifiNetworkSuggestion;
    .param p2, "failureReason"    # I

    .line 10011
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListenerProxy;->mListener:Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListener;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListener;->onConnectionStatus(Landroid/net/wifi/WifiNetworkSuggestion;I)V

    return-void
.end method


# virtual methods
.method public blacklist onConnectionStatus(Landroid/net/wifi/WifiNetworkSuggestion;I)V
    .registers 5
    .param p1, "wifiNetworkSuggestion"    # Landroid/net/wifi/WifiNetworkSuggestion;
    .param p2, "failureReason"    # I

    .line 10009
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10010
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListenerProxy;Landroid/net/wifi/WifiNetworkSuggestion;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10012
    return-void
.end method
