.class Lcom/android/internal/telephony/NetworkTypeController$4;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkTypeController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$4;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAvailable(Landroid/net/Network;)V
    .registers 5

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$4;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On Available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_37

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$4;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmConnectivityManager(Lcom/android/internal/telephony/NetworkTypeController;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$4;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmConnectivityManager(Lcom/android/internal/telephony/NetworkTypeController;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 255
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 256
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$4;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateBandwidthConstrainedStatus(Lcom/android/internal/telephony/NetworkTypeController;Landroid/net/NetworkCapabilities;)V

    return-void

    .line 258
    :cond_30
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$4;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string p1, "network is null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method public whitelist onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 6

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$4;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapabilitiesChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_1e

    .line 268
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$4;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateBandwidthConstrainedStatus(Lcom/android/internal/telephony/NetworkTypeController;Landroid/net/NetworkCapabilities;)V

    return-void

    .line 270
    :cond_1e
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$4;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string p1, "network is null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .registers 3

    .line 276
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$4;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Network Lost"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$4;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSatelliteConstrainedData(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 278
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$4;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsSatelliteConstrainedData(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 279
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$4;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmDisplayInfoController(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/DisplayInfoController;->updateTelephonyDisplayInfo()V

    :cond_1e
    return-void
.end method
