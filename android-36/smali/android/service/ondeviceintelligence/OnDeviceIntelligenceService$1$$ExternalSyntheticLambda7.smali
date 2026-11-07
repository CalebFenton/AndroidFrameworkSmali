.class public final synthetic Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda7;
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
    check-cast p1, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/android/internal/infra/AndroidFuture;

    invoke-static {p1, p2, p3}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->$r8$lambda$Qsbu71VMMf0OvFAm0RD4gd8nI-8(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method
