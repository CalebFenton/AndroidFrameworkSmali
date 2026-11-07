.class Landroid/location/provider/GeocodeProviderBase$SingleUseCallback;
.super Ljava/lang/Object;
.source "GeocodeProviderBase.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/GeocodeProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleUseCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Ljava/util/List<",
        "Landroid/location/Address;",
        ">;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/location/provider/IGeocodeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/location/provider/IGeocodeCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/location/provider/IGeocodeCallback;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/location/provider/GeocodeProviderBase$SingleUseCallback;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 154
    return-void
.end method


# virtual methods
.method public whitelist onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 159
    :try_start_0
    iget-object v0, p0, Landroid/location/provider/GeocodeProviderBase$SingleUseCallback;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/provider/IGeocodeCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/provider/IGeocodeCallback;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/location/provider/IGeocodeCallback;->onError(Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    .line 162
    nop

    .line 163
    return-void

    .line 160
    :catch_18
    move-exception v0

    .line 161
    .local v0, "r":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic whitelist onResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 148
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/location/provider/GeocodeProviderBase$SingleUseCallback;->onResult(Ljava/util/List;)V

    return-void
.end method

.method public blacklist onResult(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    iget-object v0, p0, Landroid/location/provider/GeocodeProviderBase$SingleUseCallback;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/provider/IGeocodeCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/provider/IGeocodeCallback;

    invoke-interface {v0, p1}, Landroid/location/provider/IGeocodeCallback;->onResults(Ljava/util/List;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 171
    nop

    .line 172
    return-void

    .line 169
    :catch_14
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
