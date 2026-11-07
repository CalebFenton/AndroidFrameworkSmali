.class public final synthetic Landroid/app/sdksandbox/SdkSandboxManagerFrameworkInitializer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist createService(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Landroid/app/sdksandbox/SdkSandboxManagerFrameworkInitializer;->lambda$registerServiceWrappers$1(Landroid/content/Context;)Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;

    move-result-object p1

    return-object p1
.end method
