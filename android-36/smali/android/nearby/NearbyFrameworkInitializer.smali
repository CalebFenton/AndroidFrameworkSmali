.class public final Landroid/nearby/NearbyFrameworkInitializer;
.super Ljava/lang/Object;
.source "NearbyFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;Landroid/os/IBinder;)Landroid/nearby/NearbyManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 45
    invoke-static {p1}, Landroid/nearby/INearbyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nearby/INearbyManager;

    move-result-object v0

    .line 46
    .local v0, "service":Landroid/nearby/INearbyManager;
    new-instance v1, Landroid/nearby/NearbyManager;

    invoke-direct {v1, p0, v0}, Landroid/nearby/NearbyManager;-><init>(Landroid/content/Context;Landroid/nearby/INearbyManager;)V

    return-object v1
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 41
    const-class v0, Landroid/nearby/NearbyManager;

    new-instance v1, Landroid/nearby/NearbyFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/nearby/NearbyFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "nearby"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 49
    return-void
.end method
