.class Landroid/health/connect/HealthConnectManager$27;
.super Landroid/health/connect/aidl/IMigrationCallback$Stub;
.source "HealthConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/health/connect/HealthConnectManager;->wrapMigrationCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/health/connect/aidl/IMigrationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 3

    .line 2118
    iput-object p1, p0, Landroid/health/connect/HealthConnectManager$27;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/health/connect/HealthConnectManager$27;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/health/connect/aidl/IMigrationCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onError$1(Landroid/os/OutcomeReceiver;Landroid/health/connect/migration/MigrationException;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "exception"    # Landroid/health/connect/migration/MigrationException;

    .line 2128
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$0(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 2122
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/health/connect/migration/MigrationException;)V
    .registers 5
    .param p1, "exception"    # Landroid/health/connect/migration/MigrationException;

    .line 2127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2128
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager$27;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager$27;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/health/connect/HealthConnectManager$27$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/health/connect/HealthConnectManager$27$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/health/connect/migration/MigrationException;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2129
    return-void
.end method

.method public blacklist onSuccess()V
    .registers 4

    .line 2121
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2122
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager$27;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager$27;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/health/connect/HealthConnectManager$27$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/health/connect/HealthConnectManager$27$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2123
    return-void
.end method
