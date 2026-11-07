.class Landroid/net/wifi/WifiManager$13;
.super Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiManager;->addWifiVerboseLoggingStatusChangedListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiVerboseLoggingStatusChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/WifiManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/net/wifi/WifiManager$WifiVerboseLoggingStatusChangedListener;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiVerboseLoggingStatusChangedListener;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;
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

    .line 10086
    iput-object p1, p0, Landroid/net/wifi/WifiManager$13;->this$0:Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$13;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/wifi/WifiManager$13;->val$listener:Landroid/net/wifi/WifiManager$WifiVerboseLoggingStatusChangedListener;

    invoke-direct {p0}, Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onStatusChanged$0(Landroid/net/wifi/WifiManager$WifiVerboseLoggingStatusChangedListener;Z)V
    .registers 2
    .param p0, "listener"    # Landroid/net/wifi/WifiManager$WifiVerboseLoggingStatusChangedListener;
    .param p1, "enabled"    # Z

    .line 10094
    invoke-interface {p0, p1}, Landroid/net/wifi/WifiManager$WifiVerboseLoggingStatusChangedListener;->onWifiVerboseLoggingStatusChanged(Z)V

    return-void
.end method


# virtual methods
.method public blacklist onStatusChanged(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 10089
    iget-object v0, p0, Landroid/net/wifi/WifiManager$13;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 10090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiVerboseLoggingStatusListener: onVerboseLoggingStatusChanged: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10093
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10094
    iget-object v0, p0, Landroid/net/wifi/WifiManager$13;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$13;->val$listener:Landroid/net/wifi/WifiManager$WifiVerboseLoggingStatusChangedListener;

    new-instance v2, Landroid/net/wifi/WifiManager$13$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/net/wifi/WifiManager$13$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$WifiVerboseLoggingStatusChangedListener;Z)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10096
    return-void
.end method
