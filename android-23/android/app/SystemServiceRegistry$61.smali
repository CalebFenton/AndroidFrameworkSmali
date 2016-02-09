.class final Landroid/app/SystemServiceRegistry$61;
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
        "Landroid/app/usage/UsageStatsManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 637
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/app/usage/UsageStatsManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 640
    const-string/jumbo v2, "usagestats"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 641
    .local v0, "iBinder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    #@a
    move-result-object v1

    #@b
    .line 642
    .local v1, "service":Landroid/app/usage/IUsageStatsManager;
    new-instance v2, Landroid/app/usage/UsageStatsManager;

    #@d
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@10
    move-result-object v3

    #@11
    invoke-direct {v2, v3, v1}, Landroid/app/usage/UsageStatsManager;-><init>(Landroid/content/Context;Landroid/app/usage/IUsageStatsManager;)V

    #@14
    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 639
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$61;->createService(Landroid/app/ContextImpl;)Landroid/app/usage/UsageStatsManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
