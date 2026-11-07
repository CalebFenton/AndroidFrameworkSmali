.class public Landroid/app/ecm/EnhancedConfirmationFrameworkInitializer;
.super Ljava/lang/Object;
.source "EnhancedConfirmationFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;Landroid/os/IBinder;)Landroid/app/ecm/EnhancedConfirmationManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceBinder"    # Landroid/os/IBinder;

    .line 48
    new-instance v0, Landroid/app/ecm/EnhancedConfirmationManager;

    .line 49
    invoke-static {p1}, Landroid/app/ecm/IEnhancedConfirmationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ecm/IEnhancedConfirmationManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/ecm/EnhancedConfirmationManager;-><init>(Landroid/content/Context;Landroid/app/ecm/IEnhancedConfirmationManager;)V

    .line 48
    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 46
    const-class v0, Landroid/app/ecm/EnhancedConfirmationManager;

    new-instance v1, Landroid/app/ecm/EnhancedConfirmationFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/ecm/EnhancedConfirmationFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "ecm_enhanced_confirmation"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 50
    return-void
.end method
