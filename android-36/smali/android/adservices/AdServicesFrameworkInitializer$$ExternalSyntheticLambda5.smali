.class public final synthetic Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda5;
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
    invoke-static {p1}, Landroid/adservices/AdServicesFrameworkInitializer;->lambda$registerServiceWrappers$10(Landroid/content/Context;)Landroid/adservices/common/AdServicesCommonManager;

    move-result-object p1

    return-object p1
.end method
