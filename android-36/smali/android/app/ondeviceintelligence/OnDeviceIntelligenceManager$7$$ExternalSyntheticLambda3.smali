.class public final synthetic Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/ondeviceintelligence/StreamingProcessingCallback;

.field public final synthetic blacklist f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/ondeviceintelligence/StreamingProcessingCallback;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda3;->f$0:Landroid/app/ondeviceintelligence/StreamingProcessingCallback;

    iput-object p2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda3;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda3;->f$0:Landroid/app/ondeviceintelligence/StreamingProcessingCallback;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda3;->f$1:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7;->lambda$onSuccess$2(Landroid/app/ondeviceintelligence/StreamingProcessingCallback;Landroid/os/Bundle;)V

    return-void
.end method
