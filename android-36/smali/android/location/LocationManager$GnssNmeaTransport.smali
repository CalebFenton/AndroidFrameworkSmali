.class Landroid/location/LocationManager$GnssNmeaTransport;
.super Landroid/location/IGnssNmeaListener$Stub;
.source "LocationManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssNmeaTransport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/IGnssNmeaListener$Stub;",
        "Lcom/android/internal/listeners/ListenerTransport<",
        "Landroid/location/OnNmeaMessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private volatile blacklist mListener:Landroid/location/OnNmeaMessageListener;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/OnNmeaMessageListener;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Landroid/location/OnNmeaMessageListener;

    .line 3459
    invoke-direct {p0}, Landroid/location/IGnssNmeaListener$Stub;-><init>()V

    .line 3460
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

    .line 3461
    if-eqz p3, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    const-string v1, "invalid null listener"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3462
    iput-object p1, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3463
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mPackageName:Ljava/lang/String;

    .line 3464
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mAttributionTag:Ljava/lang/String;

    .line 3465
    iput-object p3, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mListener:Landroid/location/OnNmeaMessageListener;

    .line 3466
    return-void
.end method

.method static synthetic blacklist lambda$onNmeaReceived$0(Ljava/lang/String;JLandroid/location/OnNmeaMessageListener;)V
    .registers 4
    .param p0, "nmea"    # Ljava/lang/String;
    .param p1, "timestamp"    # J
    .param p3, "callback"    # Landroid/location/OnNmeaMessageListener;

    .line 3488
    invoke-interface {p3, p0, p1, p2}, Landroid/location/OnNmeaMessageListener;->onNmeaMessage(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public blacklist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 3473
    iget-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getListener()Landroid/location/OnNmeaMessageListener;
    .registers 2

    .line 3483
    iget-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mListener:Landroid/location/OnNmeaMessageListener;

    return-object v0
.end method

.method public bridge synthetic blacklist getListener()Ljava/lang/Object;
    .registers 2

    .line 3450
    invoke-virtual {p0}, Landroid/location/LocationManager$GnssNmeaTransport;->getListener()Landroid/location/OnNmeaMessageListener;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .registers 2

    .line 3469
    iget-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist onNmeaReceived(JLjava/lang/String;)V
    .registers 6
    .param p1, "timestamp"    # J
    .param p3, "nmea"    # Ljava/lang/String;

    .line 3488
    iget-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GnssNmeaTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3, p1, p2}, Landroid/location/LocationManager$GnssNmeaTransport$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$GnssNmeaTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3489
    return-void
.end method

.method public blacklist unregister()V
    .registers 2

    .line 3478
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport;->mListener:Landroid/location/OnNmeaMessageListener;

    .line 3479
    return-void
.end method
