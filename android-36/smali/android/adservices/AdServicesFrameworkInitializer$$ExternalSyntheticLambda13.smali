.class public final synthetic Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry$ServiceMutator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist setContext(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Landroid/adservices/AdServicesFrameworkInitializer;->lambda$registerServiceWrappers$4(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
