.class Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;
.super Landroid/scheduling/IRequestRebootReadinessStatusListener$Stub;
.source "RebootReadinessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/scheduling/RebootReadinessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RebootReadinessCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/scheduling/RebootReadinessManager$RequestRebootReadinessStatusListener;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$g4T-Q7I25kS0I8agvm3aOnYRj20(Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;Landroid/os/RemoteCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;->lambda$onRequestRebootReadinessStatus$0(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/scheduling/RebootReadinessManager$RequestRebootReadinessStatusListener;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "callback"    # Landroid/scheduling/RebootReadinessManager$RequestRebootReadinessStatusListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 232
    invoke-direct {p0}, Landroid/scheduling/IRequestRebootReadinessStatusListener$Stub;-><init>()V

    .line 233
    iput-object p1, p0, Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;->mCallback:Landroid/scheduling/RebootReadinessManager$RequestRebootReadinessStatusListener;

    .line 234
    iput-object p2, p0, Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 235
    return-void
.end method

.method private synthetic blacklist lambda$onRequestRebootReadinessStatus$0(Landroid/os/RemoteCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 240
    iget-object v0, p0, Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;->mCallback:Landroid/scheduling/RebootReadinessManager$RequestRebootReadinessStatusListener;

    invoke-interface {v0}, Landroid/scheduling/RebootReadinessManager$RequestRebootReadinessStatusListener;->onRequestRebootReadinessStatus()Landroid/scheduling/RebootReadinessManager$RebootReadinessStatus;

    move-result-object v0

    .line 241
    .local v0, "response":Landroid/scheduling/RebootReadinessManager$RebootReadinessStatus;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "IS_REBOOT_READY"

    invoke-virtual {v0}, Landroid/scheduling/RebootReadinessManager$RebootReadinessStatus;->isReadyToReboot()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    const-string v2, "ESTIMATED_FINISH_TIME"

    invoke-virtual {v0}, Landroid/scheduling/RebootReadinessManager$RebootReadinessStatus;->getEstimatedFinishTime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 244
    const-string v2, "SUBSYSTEM_NAME"

    invoke-virtual {v0}, Landroid/scheduling/RebootReadinessManager$RebootReadinessStatus;->getLogSubsystemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 246
    return-void
.end method


# virtual methods
.method public blacklist onRequestRebootReadinessStatus(Landroid/os/RemoteCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 239
    iget-object v0, p0, Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;Landroid/os/RemoteCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method
