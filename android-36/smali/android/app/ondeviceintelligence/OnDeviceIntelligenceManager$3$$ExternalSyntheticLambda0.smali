.class public final synthetic Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$2:Landroid/app/ondeviceintelligence/FeatureDetails;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/app/ondeviceintelligence/FeatureDetails;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3$$ExternalSyntheticLambda0;->f$1:Landroid/os/OutcomeReceiver;

    iput-object p3, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3$$ExternalSyntheticLambda0;->f$2:Landroid/app/ondeviceintelligence/FeatureDetails;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3$$ExternalSyntheticLambda0;->f$1:Landroid/os/OutcomeReceiver;

    iget-object v2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3$$ExternalSyntheticLambda0;->f$2:Landroid/app/ondeviceintelligence/FeatureDetails;

    invoke-static {v0, v1, v2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3;->lambda$onSuccess$1(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/app/ondeviceintelligence/FeatureDetails;)V

    return-void
.end method
