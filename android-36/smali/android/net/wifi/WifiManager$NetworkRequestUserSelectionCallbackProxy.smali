.class Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallbackProxy;
.super Ljava/lang/Object;
.source "WifiManager.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRequestUserSelectionCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/net/wifi/INetworkRequestUserSelectionCallback;

.field final synthetic blacklist this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V
    .registers 3
    .param p2, "callback"    # Landroid/net/wifi/INetworkRequestUserSelectionCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 3180
    iput-object p1, p0, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3181
    iput-object p2, p0, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallbackProxy;->mCallback:Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    .line 3182
    return-void
.end method


# virtual methods
.method public whitelist reject()V
    .registers 4

    .line 3200
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    const-string v1, "WifiManager"

    if-eqz v0, :cond_f

    .line 3201
    const-string v0, "NetworkRequestUserSelectionCallbackProxy: reject"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    :cond_f
    :try_start_f
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallbackProxy;->mCallback:Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    invoke-interface {v0}, Landroid/net/wifi/INetworkRequestUserSelectionCallback;->reject()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16

    .line 3208
    nop

    .line 3209
    return-void

    .line 3205
    :catch_16
    move-exception v0

    .line 3206
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to invoke onRejected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3207
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist select(Landroid/net/wifi/WifiConfiguration;)V
    .registers 5
    .param p1, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;

    .line 3186
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    const-string v1, "WifiManager"

    if-eqz v0, :cond_20

    .line 3187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkRequestUserSelectionCallbackProxy: select wificonfiguration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    :cond_20
    :try_start_20
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallbackProxy;->mCallback:Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/INetworkRequestUserSelectionCallback;->select(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_27

    .line 3195
    nop

    .line 3196
    return-void

    .line 3192
    :catch_27
    move-exception v0

    .line 3193
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to invoke onSelected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3194
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
