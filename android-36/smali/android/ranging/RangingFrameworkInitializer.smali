.class public final Landroid/ranging/RangingFrameworkInitializer;
.super Ljava/lang/Object;
.source "RangingFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;Landroid/os/IBinder;)Landroid/ranging/RangingManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 49
    invoke-static {p1}, Landroid/ranging/IRangingAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/ranging/IRangingAdapter;

    move-result-object v0

    .line 50
    .local v0, "adapter":Landroid/ranging/IRangingAdapter;
    new-instance v1, Landroid/ranging/RangingManager;

    invoke-direct {v1, p0, v0}, Landroid/ranging/RangingManager;-><init>(Landroid/content/Context;Landroid/ranging/IRangingAdapter;)V

    return-object v1
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 45
    const-class v0, Landroid/ranging/RangingManager;

    new-instance v1, Landroid/ranging/RangingFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/ranging/RangingFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "ranging"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 53
    return-void
.end method
