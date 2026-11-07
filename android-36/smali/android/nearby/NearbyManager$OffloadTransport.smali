.class Landroid/nearby/NearbyManager$OffloadTransport;
.super Landroid/nearby/aidl/IOffloadCallback$Stub;
.source "NearbyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/NearbyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OffloadTransport"
.end annotation


# instance fields
.field volatile blacklist mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/nearby/OffloadCapability;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$uW3H4X7opHTBvn0_xaK0j9KV4gY(Landroid/nearby/NearbyManager$OffloadTransport;Landroid/nearby/OffloadCapability;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/nearby/NearbyManager$OffloadTransport;->lambda$onQueryComplete$0(Landroid/nearby/OffloadCapability;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/nearby/OffloadCapability;",
            ">;)V"
        }
    .end annotation

    .line 344
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/nearby/OffloadCapability;>;"
    invoke-direct {p0}, Landroid/nearby/aidl/IOffloadCallback$Stub;-><init>()V

    .line 345
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    const-string v3, "illegal null executor"

    invoke-static {v2, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 346
    if-eqz p2, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    const-string v1, "illegal null consumer"

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 347
    iput-object p1, p0, Landroid/nearby/NearbyManager$OffloadTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 348
    iput-object p2, p0, Landroid/nearby/NearbyManager$OffloadTransport;->mConsumer:Ljava/util/function/Consumer;

    .line 349
    return-void
.end method

.method private synthetic blacklist lambda$onQueryComplete$0(Landroid/nearby/OffloadCapability;)V
    .registers 3
    .param p1, "capability"    # Landroid/nearby/OffloadCapability;

    .line 354
    iget-object v0, p0, Landroid/nearby/NearbyManager$OffloadTransport;->mConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_9

    .line 355
    iget-object v0, p0, Landroid/nearby/NearbyManager$OffloadTransport;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 357
    :cond_9
    return-void
.end method


# virtual methods
.method public blacklist onQueryComplete(Landroid/nearby/OffloadCapability;)V
    .registers 4
    .param p1, "capability"    # Landroid/nearby/OffloadCapability;

    .line 353
    iget-object v0, p0, Landroid/nearby/NearbyManager$OffloadTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/nearby/NearbyManager$OffloadTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/nearby/NearbyManager$OffloadTransport$$ExternalSyntheticLambda0;-><init>(Landroid/nearby/NearbyManager$OffloadTransport;Landroid/nearby/OffloadCapability;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 358
    return-void
.end method
