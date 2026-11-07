.class public final synthetic Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/OctConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    .line 0
    check-cast p1, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Landroid/app/ondeviceintelligence/Feature;

    check-cast p4, Landroid/os/Bundle;

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    check-cast p6, Landroid/os/CancellationSignal;

    check-cast p7, Landroid/app/ondeviceintelligence/ProcessingSignal;

    check-cast p8, Landroid/app/ondeviceintelligence/StreamingProcessingCallback;

    move-object p0, p1

    move p1, p2

    move-object p2, p3

    move-object p3, p4

    move p4, p5

    move-object p5, p6

    move-object p6, p7

    move-object p7, p8

    invoke-virtual/range {p0 .. p7}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->onProcessRequestStreaming(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILandroid/os/CancellationSignal;Landroid/app/ondeviceintelligence/ProcessingSignal;Landroid/app/ondeviceintelligence/StreamingProcessingCallback;)V

    return-void
.end method
