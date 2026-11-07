.class public Landroid/app/appsearch/AppSearchManagerFrameworkInitializer;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$grWijzuH58_6ka_Kb3qtl6gSeMY(Landroid/content/Context;Landroid/os/IBinder;)Landroid/app/appsearch/AppSearchManager;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroid/app/appsearch/AppSearchManagerFrameworkInitializer;->lambda$initialize$0(Landroid/content/Context;Landroid/os/IBinder;)Landroid/app/appsearch/AppSearchManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static whitelist initialize()V
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/AppSearchManagerFrameworkInitializer$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "app_search"

    .line 7
    .line 8
    const-class v2, Landroid/app/appsearch/AppSearchManager;

    .line 9
    .line 10
    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static synthetic blacklist lambda$initialize$0(Landroid/content/Context;Landroid/os/IBinder;)Landroid/app/appsearch/AppSearchManager;
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/AppSearchManager;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/app/appsearch/aidl/IAppSearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p0, p1}, Landroid/app/appsearch/AppSearchManager;-><init>(Landroid/content/Context;Landroid/app/appsearch/aidl/IAppSearchManager;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
