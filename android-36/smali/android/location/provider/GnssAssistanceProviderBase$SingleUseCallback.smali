.class Landroid/location/provider/GnssAssistanceProviderBase$SingleUseCallback;
.super Ljava/lang/Object;
.source "GnssAssistanceProviderBase.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/GnssAssistanceProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleUseCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/location/GnssAssistance;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/location/provider/IGnssAssistanceCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/location/provider/IGnssAssistanceCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/location/provider/IGnssAssistanceCallback;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/location/provider/GnssAssistanceProviderBase$SingleUseCallback;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 132
    return-void
.end method


# virtual methods
.method public whitelist onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 137
    :try_start_0
    iget-object v0, p0, Landroid/location/provider/GnssAssistanceProviderBase$SingleUseCallback;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/provider/IGnssAssistanceCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/provider/IGnssAssistanceCallback;

    invoke-interface {v0}, Landroid/location/provider/IGnssAssistanceCallback;->onError()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 140
    nop

    .line 141
    return-void

    .line 138
    :catch_14
    move-exception v0

    .line 139
    .local v0, "r":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist onResult(Landroid/location/GnssAssistance;)V
    .registers 4
    .param p1, "result"    # Landroid/location/GnssAssistance;

    .line 146
    :try_start_0
    iget-object v0, p0, Landroid/location/provider/GnssAssistanceProviderBase$SingleUseCallback;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/provider/IGnssAssistanceCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/provider/IGnssAssistanceCallback;

    invoke-interface {v0, p1}, Landroid/location/provider/IGnssAssistanceCallback;->onResult(Landroid/location/GnssAssistance;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 149
    nop

    .line 150
    return-void

    .line 147
    :catch_14
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 125
    check-cast p1, Landroid/location/GnssAssistance;

    invoke-virtual {p0, p1}, Landroid/location/provider/GnssAssistanceProviderBase$SingleUseCallback;->onResult(Landroid/location/GnssAssistance;)V

    return-void
.end method
