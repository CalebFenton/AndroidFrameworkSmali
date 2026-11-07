.class public final synthetic Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    check-cast p1, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    check-cast p2, Landroid/os/Bundle;

    check-cast p3, Landroid/os/OutcomeReceiver;

    invoke-virtual {p1, p2, p3}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->onUpdateProcessingState(Landroid/os/Bundle;Landroid/os/OutcomeReceiver;)V

    return-void
.end method
