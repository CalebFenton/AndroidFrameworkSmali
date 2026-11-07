.class public Landroid/content/rollback/RollbackManagerFrameworkInitializer;
.super Ljava/lang/Object;
.source "RollbackManagerFrameworkInitializer.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist initialize()V
    .registers 3

    .line 37
    const-class v0, Landroid/content/rollback/RollbackManager;

    new-instance v1, Landroid/content/rollback/RollbackManagerFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/content/rollback/RollbackManagerFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string/jumbo v2, "rollback"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 40
    return-void
.end method

.method static synthetic blacklist lambda$initialize$0(Landroid/content/Context;Landroid/os/IBinder;)Landroid/content/rollback/RollbackManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "b"    # Landroid/os/IBinder;

    .line 39
    new-instance v0, Landroid/content/rollback/RollbackManager;

    invoke-static {p1}, Landroid/content/rollback/IRollbackManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/rollback/RollbackManager;-><init>(Landroid/content/Context;Landroid/content/rollback/IRollbackManager;)V

    return-object v0
.end method
