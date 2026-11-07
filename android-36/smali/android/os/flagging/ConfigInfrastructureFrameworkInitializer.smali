.class public final Landroid/os/flagging/ConfigInfrastructureFrameworkInitializer;
.super Ljava/lang/Object;
.source "ConfigInfrastructureFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;)Landroid/os/flagging/FlagManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 48
    new-instance v0, Landroid/os/flagging/FlagManager;

    invoke-direct {v0, p0}, Landroid/os/flagging/FlagManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 45
    const-class v0, Landroid/os/flagging/FlagManager;

    new-instance v1, Landroid/os/flagging/ConfigInfrastructureFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/os/flagging/ConfigInfrastructureFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "flag"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 49
    return-void
.end method
