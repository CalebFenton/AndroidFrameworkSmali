.class public Landroid/app/role/RoleFrameworkInitializer;
.super Ljava/lang/Object;
.source "RoleFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;Landroid/os/IBinder;)Landroid/app/role/RoleManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 45
    new-instance v0, Landroid/app/role/RoleManager;

    .line 46
    invoke-static {p1}, Landroid/app/role/IRoleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/role/IRoleManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/role/RoleManager;-><init>(Landroid/content/Context;Landroid/app/role/IRoleManager;)V

    .line 45
    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 44
    const-class v0, Landroid/app/role/RoleManager;

    new-instance v1, Landroid/app/role/RoleFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/role/RoleFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "role"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 47
    return-void
.end method
