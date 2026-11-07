.class Landroid/app/SystemServiceRegistry$75;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/security/authenticationpolicy/AuthenticationPolicyManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1029
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/security/authenticationpolicy/AuthenticationPolicyManager;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1033
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->secureLockdown()Z

    move-result v0

    const-string v1, "authentication_policy"

    if-eqz v0, :cond_1b

    .line 1038
    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1040
    .local v0, "binder":Landroid/os/IBinder;
    nop

    .line 1041
    invoke-static {v0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    move-result-object v1

    .line 1042
    .local v1, "service":Landroid/security/authenticationpolicy/IAuthenticationPolicyService;
    new-instance v2, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;-><init>(Landroid/content/Context;Landroid/security/authenticationpolicy/IAuthenticationPolicyService;)V

    return-object v2

    .line 1034
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "service":Landroid/security/authenticationpolicy/IAuthenticationPolicyService;
    :cond_1b
    new-instance v0, Landroid/os/ServiceManager$ServiceNotFoundException;

    invoke-direct {v0, v1}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1029
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$75;->createService(Landroid/app/ContextImpl;)Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

    move-result-object p1

    return-object p1
.end method
