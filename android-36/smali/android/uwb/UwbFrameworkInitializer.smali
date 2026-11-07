.class public Landroid/uwb/UwbFrameworkInitializer;
.super Ljava/lang/Object;
.source "UwbFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;Landroid/os/IBinder;)Landroid/uwb/UwbManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 43
    invoke-static {p1}, Landroid/uwb/IUwbAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbAdapter;

    move-result-object v0

    .line 44
    .local v0, "adapter":Landroid/uwb/IUwbAdapter;
    new-instance v1, Landroid/uwb/UwbManager;

    invoke-direct {v1, p0, v0}, Landroid/uwb/UwbManager;-><init>(Landroid/content/Context;Landroid/uwb/IUwbAdapter;)V

    return-object v1
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 39
    const-class v0, Landroid/uwb/UwbManager;

    new-instance v1, Landroid/uwb/UwbFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/uwb/UwbFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "uwb"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 47
    return-void
.end method
