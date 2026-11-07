.class Landroid/location/provider/PopulationDensityProviderBase$SingleUseS2LevelCallback;
.super Ljava/lang/Object;
.source "PopulationDensityProviderBase.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/PopulationDensityProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleUseS2LevelCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/location/provider/IS2LevelCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/location/provider/IS2LevelCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/location/provider/IS2LevelCallback;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/location/provider/PopulationDensityProviderBase$SingleUseS2LevelCallback;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 147
    return-void
.end method


# virtual methods
.method public whitelist onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 161
    :try_start_0
    iget-object v0, p0, Landroid/location/provider/PopulationDensityProviderBase$SingleUseS2LevelCallback;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/provider/IS2LevelCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/provider/IS2LevelCallback;

    invoke-interface {v0}, Landroid/location/provider/IS2LevelCallback;->onError()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 164
    nop

    .line 165
    return-void

    .line 162
    :catch_14
    move-exception v0

    .line 163
    .local v0, "r":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist onResult(Ljava/lang/Integer;)V
    .registers 4
    .param p1, "level"    # Ljava/lang/Integer;

    .line 152
    :try_start_0
    iget-object v0, p0, Landroid/location/provider/PopulationDensityProviderBase$SingleUseS2LevelCallback;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/provider/IS2LevelCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/provider/IS2LevelCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/location/provider/IS2LevelCallback;->onResult(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    .line 155
    nop

    .line 156
    return-void

    .line 153
    :catch_18
    move-exception v0

    .line 154
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

    .line 141
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/location/provider/PopulationDensityProviderBase$SingleUseS2LevelCallback;->onResult(Ljava/lang/Integer;)V

    return-void
.end method
