.class public final synthetic Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Map;

.field public final synthetic blacklist f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Map;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda1;->f$0:Ljava/util/Map;

    iput-object p2, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda1;->f$0:Ljava/util/Map;

    iget-object v1, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->lambda$wrapAsRemoteCallback$4(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method
