.class Landroid/telephony/satellite/SatelliteManager$25;
.super Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback$Stub;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/satellite/SatelliteManager;->registerForSatelliteDisallowedReasonsChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;)V
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

    .line 2956
    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$25;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/satellite/SatelliteManager$25;->val$callback:Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;

    invoke-direct {p0}, Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onSatelliteDisallowedReasonsChanged$0(Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;[I)V
    .registers 2
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;
    .param p1, "disallowedReasons"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2961
    invoke-interface {p0, p1}, Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;->onSatelliteDisallowedReasonsChanged([I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSatelliteDisallowedReasonsChanged$1(Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;[I)V
    .registers 3
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;
    .param p1, "disallowedReasons"    # [I

    .line 2960
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$25$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$25$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;[I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onSatelliteDisallowedReasonsChanged([I)V
    .registers 5
    .param p1, "disallowedReasons"    # [I

    .line 2960
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$25;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$25;->val$callback:Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$25$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/telephony/satellite/SatelliteManager$25$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;[I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2963
    return-void
.end method
