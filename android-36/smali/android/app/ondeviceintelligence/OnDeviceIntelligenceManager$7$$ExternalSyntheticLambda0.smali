.class public final synthetic Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Landroid/app/ondeviceintelligence/StreamingProcessingCallback;

.field public final synthetic blacklist f$2:Landroid/os/Bundle;

.field public final synthetic blacklist f$3:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/StreamingProcessingCallback;Landroid/os/Bundle;Landroid/os/RemoteCallback;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda0;->f$1:Landroid/app/ondeviceintelligence/StreamingProcessingCallback;

    iput-object p3, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    iput-object p4, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda0;->f$3:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda0;->f$1:Landroid/app/ondeviceintelligence/StreamingProcessingCallback;

    iget-object v2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    iget-object v3, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda0;->f$3:Landroid/os/RemoteCallback;

    invoke-static {v0, v1, v2, v3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7;->lambda$onDataAugmentRequest$9(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/StreamingProcessingCallback;Landroid/os/Bundle;Landroid/os/RemoteCallback;)V

    return-void
.end method
