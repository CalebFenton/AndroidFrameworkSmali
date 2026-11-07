.class Landroid/telephony/satellite/SatelliteManager$30;
.super Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback$Stub;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/satellite/SatelliteManager;->registerForCommunicationAccessStateChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;)V
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

    .line 3393
    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$30;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/satellite/SatelliteManager$30;->val$callback:Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;

    invoke-direct {p0}, Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onAccessAllowedStateChanged$0(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;Z)V
    .registers 2
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;
    .param p1, "isAllowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3398
    invoke-interface {p0, p1}, Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;->onAccessAllowedStateChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onAccessAllowedStateChanged$1(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;Z)V
    .registers 3
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;
    .param p1, "isAllowed"    # Z

    .line 3397
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onAccessConfigurationChanged$2(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;Landroid/telephony/satellite/SatelliteAccessConfiguration;)V
    .registers 2
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;
    .param p1, "satelliteAccessConfiguration"    # Landroid/telephony/satellite/SatelliteAccessConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3407
    invoke-interface {p0, p1}, Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;->onAccessConfigurationChanged(Landroid/telephony/satellite/SatelliteAccessConfiguration;)V

    return-void
.end method

.method static synthetic blacklist lambda$onAccessConfigurationChanged$3(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;Landroid/telephony/satellite/SatelliteAccessConfiguration;)V
    .registers 3
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;
    .param p1, "satelliteAccessConfiguration"    # Landroid/telephony/satellite/SatelliteAccessConfiguration;

    .line 3406
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;Landroid/telephony/satellite/SatelliteAccessConfiguration;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onAccessAllowedStateChanged(Z)V
    .registers 5
    .param p1, "isAllowed"    # Z

    .line 3397
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$30;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$30;->val$callback:Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;Z)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3400
    return-void
.end method

.method public blacklist onAccessConfigurationChanged(Landroid/telephony/satellite/SatelliteAccessConfiguration;)V
    .registers 5
    .param p1, "satelliteAccessConfiguration"    # Landroid/telephony/satellite/SatelliteAccessConfiguration;

    .line 3406
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$30;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$30;->val$callback:Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;Landroid/telephony/satellite/SatelliteAccessConfiguration;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3409
    return-void
.end method
