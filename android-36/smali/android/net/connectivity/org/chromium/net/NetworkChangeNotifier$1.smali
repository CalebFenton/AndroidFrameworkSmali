.class Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$1;
.super Ljava/lang/Object;
.source "NetworkChangeNotifier.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityStateInternal(ZLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 220
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$1;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onConnectionCostChanged(I)V
    .registers 3
    .param p1, "newConnectionCost"    # I

    .line 228
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$1;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->notifyObserversOfConnectionCostChange(I)V

    .line 230
    return-void
.end method

.method public blacklist onConnectionSubtypeChanged(I)V
    .registers 3
    .param p1, "newConnectionSubtype"    # I

    .line 235
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$1;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->notifyObserversOfConnectionSubtypeChange(I)V

    .line 237
    return-void
.end method

.method public blacklist onConnectionTypeChanged(I)V
    .registers 3
    .param p1, "newConnectionType"    # I

    .line 223
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$1;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->-$$Nest$mupdateCurrentConnectionType(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;I)V

    .line 224
    return-void
.end method

.method public blacklist onNetworkConnect(JI)V
    .registers 5
    .param p1, "netId"    # J
    .param p3, "connectionType"    # I

    .line 242
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$1;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->notifyObserversOfNetworkConnect(JI)V

    .line 243
    return-void
.end method

.method public blacklist onNetworkDisconnect(J)V
    .registers 4
    .param p1, "netId"    # J

    .line 252
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$1;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    invoke-virtual {v0, p1, p2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->notifyObserversOfNetworkDisconnect(J)V

    .line 253
    return-void
.end method

.method public blacklist onNetworkSoonToDisconnect(J)V
    .registers 4
    .param p1, "netId"    # J

    .line 247
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$1;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    invoke-virtual {v0, p1, p2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->notifyObserversOfNetworkSoonToDisconnect(J)V

    .line 248
    return-void
.end method

.method public blacklist purgeActiveNetworkList([J)V
    .registers 3
    .param p1, "activeNetIds"    # [J

    .line 257
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$1;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->notifyObserversToPurgeActiveNetworkList([J)V

    .line 258
    return-void
.end method
