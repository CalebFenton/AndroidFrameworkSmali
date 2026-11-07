.class public final synthetic Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Ljava/util/function/LongConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/LongConsumer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda5;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda5;->f$1:Ljava/util/function/LongConsumer;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda5;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda5;->f$1:Ljava/util/function/LongConsumer;

    invoke-static {v0, v1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->lambda$getVersion$1(Ljava/util/concurrent/Executor;Ljava/util/function/LongConsumer;)V

    return-void
.end method
