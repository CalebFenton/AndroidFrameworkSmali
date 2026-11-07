.class public final synthetic Landroid/app/job/JobSchedulerFrameworkInitializer$$ExternalSyntheticLambda3;
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
    .registers 3

    .line 0
    new-instance v0, Landroid/os/PowerExemptionManager;

    invoke-direct {v0, p1}, Landroid/os/PowerExemptionManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
