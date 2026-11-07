.class Landroid/location/LocationManager$LocationListenerTransport$1;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/LocationManager$LocationListenerTransport;->onLocationChanged(Ljava/util/List;Landroid/os/IRemoteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
        "Landroid/location/LocationListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$locations:Ljava/util/List;

.field final synthetic blacklist val$onCompleteCallback:Landroid/os/IRemoteCallback;


# direct methods
.method constructor blacklist <init>(Landroid/location/LocationManager$LocationListenerTransport;Ljava/util/List;Landroid/os/IRemoteCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/location/LocationManager$LocationListenerTransport;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3300
    iput-object p2, p0, Landroid/location/LocationManager$LocationListenerTransport$1;->val$locations:Ljava/util/List;

    iput-object p3, p0, Landroid/location/LocationManager$LocationListenerTransport$1;->val$onCompleteCallback:Landroid/os/IRemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onComplete(Z)V
    .registers 4
    .param p1, "success"    # Z

    .line 3308
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport$1;->val$onCompleteCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_11

    .line 3310
    :try_start_4
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport$1;->val$onCompleteCallback:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    .line 3313
    goto :goto_11

    .line 3311
    :catch_b
    move-exception v0

    .line 3312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3315
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    :goto_11
    return-void
.end method

.method public blacklist operate(Landroid/location/LocationListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/LocationListener;

    .line 3303
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport$1;->val$locations:Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/location/LocationListener;->onLocationChanged(Ljava/util/List;)V

    .line 3304
    return-void
.end method

.method public bridge synthetic blacklist operate(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3300
    check-cast p1, Landroid/location/LocationListener;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$LocationListenerTransport$1;->operate(Landroid/location/LocationListener;)V

    return-void
.end method
