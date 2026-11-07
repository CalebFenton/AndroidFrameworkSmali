.class public final synthetic Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Ljava/lang/String;

.field public final synthetic blacklist f$4:Landroid/os/PersistableBundle;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3$$ExternalSyntheticLambda1;->f$1:Landroid/os/OutcomeReceiver;

    iput p3, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-object p5, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3$$ExternalSyntheticLambda1;->f$4:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3$$ExternalSyntheticLambda1;->f$1:Landroid/os/OutcomeReceiver;

    iget v2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3$$ExternalSyntheticLambda1;->f$4:Landroid/os/PersistableBundle;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3;->lambda$onFailure$3(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void
.end method
