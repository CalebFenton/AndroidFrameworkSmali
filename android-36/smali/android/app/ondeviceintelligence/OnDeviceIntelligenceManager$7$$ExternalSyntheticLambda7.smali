.class public final synthetic Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/RemoteCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda7;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda7;->f$1:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda7;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda7;->f$1:Landroid/os/RemoteCallback;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, v1, p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7;->lambda$onDataAugmentRequest$7(Ljava/util/concurrent/Executor;Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method
