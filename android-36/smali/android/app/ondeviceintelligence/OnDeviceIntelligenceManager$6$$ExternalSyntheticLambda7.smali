.class public final synthetic Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Landroid/app/ondeviceintelligence/ProcessingCallback;

.field public final synthetic blacklist f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/ProcessingCallback;Landroid/os/Bundle;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda7;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda7;->f$1:Landroid/app/ondeviceintelligence/ProcessingCallback;

    iput-object p3, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda7;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda7;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda7;->f$1:Landroid/app/ondeviceintelligence/ProcessingCallback;

    iget-object v2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6$$ExternalSyntheticLambda7;->f$2:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6;->lambda$onSuccess$1(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/ProcessingCallback;Landroid/os/Bundle;)V

    return-void
.end method
