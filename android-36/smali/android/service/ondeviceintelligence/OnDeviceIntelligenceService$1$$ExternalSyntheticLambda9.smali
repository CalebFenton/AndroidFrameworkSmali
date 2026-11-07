.class public final synthetic Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 0
    check-cast p1, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Landroid/os/OutcomeReceiver;

    invoke-virtual {p1, p2, p3, p4}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->onGetFeature(IILandroid/os/OutcomeReceiver;)V

    return-void
.end method
