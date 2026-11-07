.class public Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationConfigManager;
.super Ljava/lang/Object;
.source "OnDevicePersonalizationConfigManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist ON_DEVICE_PERSONALIZATION_CONFIG_SERVICE:Ljava/lang/String; = "on_device_personalization_config_service"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$setPersonalizationEnabled$0(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;

    .line 54
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist setPersonalizationEnabled(ZLjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Ljava/lang/Exception;>;"
    new-instance v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationConfigManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationConfigManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method
