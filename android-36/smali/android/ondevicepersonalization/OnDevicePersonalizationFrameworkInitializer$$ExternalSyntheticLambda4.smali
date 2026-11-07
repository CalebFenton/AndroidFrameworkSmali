.class public final synthetic Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist createService(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer;->lambda$registerServiceWrappers$4(Landroid/os/IBinder;)Landroid/ondevicepersonalization/OnDevicePersonalizationSystemServiceManager;

    move-result-object p1

    return-object p1
.end method
