.class public final synthetic Landroid/telephony/TelephonyFrameworkInitializer$$ExternalSyntheticLambda0;
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
    invoke-static {p1}, Landroid/telephony/TelephonyFrameworkInitializer;->lambda$registerServiceWrappers$0(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    return-object p1
.end method
