.class final Landroid/app/SystemServiceRegistry$50;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/app/AppOpsManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 546
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/app/AppOpsManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 549
    const-string/jumbo v2, "appops"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 550
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    #@a
    move-result-object v1

    #@b
    .line 551
    .local v1, "service":Lcom/android/internal/app/IAppOpsService;
    new-instance v2, Landroid/app/AppOpsManager;

    #@d
    invoke-direct {v2, p1, v1}, Landroid/app/AppOpsManager;-><init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V

    #@10
    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 548
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$50;->createService(Landroid/app/ContextImpl;)Landroid/app/AppOpsManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
