.class Landroid/location/LocationManager$GnssNavigationTransport;
.super Landroid/location/IGnssNavigationMessageListener$Stub;
.source "LocationManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssNavigationTransport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/IGnssNavigationMessageListener$Stub;",
        "Lcom/android/internal/listeners/ListenerTransport<",
        "Landroid/location/GnssNavigationMessage$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private volatile blacklist mListener:Landroid/location/GnssNavigationMessage$Callback;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/GnssNavigationMessage$Callback;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Landroid/location/GnssNavigationMessage$Callback;

    .line 3600
    invoke-direct {p0}, Landroid/location/IGnssNavigationMessageListener$Stub;-><init>()V

    .line 3601
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    const-string v3, "invalid null executor"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3602
    if-eqz p3, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    const-string v1, "invalid null callback"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3603
    iput-object p1, p0, Landroid/location/LocationManager$GnssNavigationTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3604
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$GnssNavigationTransport;->mPackageName:Ljava/lang/String;

    .line 3605
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$GnssNavigationTransport;->mAttributionTag:Ljava/lang/String;

    .line 3606
    iput-object p3, p0, Landroid/location/LocationManager$GnssNavigationTransport;->mListener:Landroid/location/GnssNavigationMessage$Callback;

    .line 3607
    return-void
.end method

.method static synthetic blacklist lambda$onGnssNavigationMessageReceived$0(Landroid/location/GnssNavigationMessage;Landroid/location/GnssNavigationMessage$Callback;)V
    .registers 2
    .param p0, "event"    # Landroid/location/GnssNavigationMessage;
    .param p1, "listener"    # Landroid/location/GnssNavigationMessage$Callback;

    .line 3629
    invoke-virtual {p1, p0}, Landroid/location/GnssNavigationMessage$Callback;->onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V

    return-void
.end method

.method static synthetic blacklist lambda$onStatusChanged$1(ILandroid/location/GnssNavigationMessage$Callback;)V
    .registers 2
    .param p0, "status"    # I
    .param p1, "listener"    # Landroid/location/GnssNavigationMessage$Callback;

    .line 3634
    invoke-virtual {p1, p0}, Landroid/location/GnssNavigationMessage$Callback;->onStatusChanged(I)V

    return-void
.end method


# virtual methods
.method public blacklist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 3614
    iget-object v0, p0, Landroid/location/LocationManager$GnssNavigationTransport;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getListener()Landroid/location/GnssNavigationMessage$Callback;
    .registers 2

    .line 3624
    iget-object v0, p0, Landroid/location/LocationManager$GnssNavigationTransport;->mListener:Landroid/location/GnssNavigationMessage$Callback;

    return-object v0
.end method

.method public bridge synthetic blacklist getListener()Ljava/lang/Object;
    .registers 2

    .line 3590
    invoke-virtual {p0}, Landroid/location/LocationManager$GnssNavigationTransport;->getListener()Landroid/location/GnssNavigationMessage$Callback;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .registers 2

    .line 3610
    iget-object v0, p0, Landroid/location/LocationManager$GnssNavigationTransport;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V
    .registers 4
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;

    .line 3629
    iget-object v0, p0, Landroid/location/LocationManager$GnssNavigationTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GnssNavigationTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/location/LocationManager$GnssNavigationTransport$$ExternalSyntheticLambda0;-><init>(Landroid/location/GnssNavigationMessage;)V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$GnssNavigationTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3630
    return-void
.end method

.method public blacklist onStatusChanged(I)V
    .registers 4
    .param p1, "status"    # I

    .line 3634
    iget-object v0, p0, Landroid/location/LocationManager$GnssNavigationTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GnssNavigationTransport$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/location/LocationManager$GnssNavigationTransport$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$GnssNavigationTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3635
    return-void
.end method

.method public blacklist unregister()V
    .registers 2

    .line 3619
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GnssNavigationTransport;->mListener:Landroid/location/GnssNavigationMessage$Callback;

    .line 3620
    return-void
.end method
