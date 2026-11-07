.class public final synthetic Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

.field public final synthetic blacklist f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Ljava/util/function/Consumer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda3;->f$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    iput-object p2, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist onResult(Landroid/os/Bundle;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda3;->f$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    iget-object v1, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, v1, p1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->$r8$lambda$UbZvuBF7YPXIW-P0gLGlxdxRYbw(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    return-void
.end method
