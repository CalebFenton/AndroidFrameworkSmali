.class Landroid/telephony/satellite/SatelliteManager$22;
.super Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback$Stub;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/satellite/SatelliteManager;->registerForSelectedNbIotSatelliteSubscriptionChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/telephony/satellite/SatelliteManager;
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

    .line 2599
    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$22;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/satellite/SatelliteManager$22;->val$callback:Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;

    invoke-direct {p0}, Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onSelectedNbIotSatelliteSubscriptionChanged$0(Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;
    .param p1, "selectedSubId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2604
    invoke-interface {p0, p1}, Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;->onSelectedNbIotSatelliteSubscriptionChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSelectedNbIotSatelliteSubscriptionChanged$1(Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;I)V
    .registers 3
    .param p0, "callback"    # Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;
    .param p1, "selectedSubId"    # I

    .line 2603
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$22$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$22$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onSelectedNbIotSatelliteSubscriptionChanged(I)V
    .registers 5
    .param p1, "selectedSubId"    # I

    .line 2603
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$22;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$22;->val$callback:Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$22$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/telephony/satellite/SatelliteManager$22$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2606
    return-void
.end method
