.class final Landroid/app/SystemServiceRegistry$29;
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
        "Landroid/os/RecoverySystem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 391
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/os/RecoverySystem;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 394
    const-string/jumbo v2, "recovery"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 395
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IRecoverySystem$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRecoverySystem;

    #@a
    move-result-object v1

    #@b
    .line 396
    .local v1, "service":Landroid/os/IRecoverySystem;
    if-nez v1, :cond_0

    #@d
    .line 397
    const-string/jumbo v2, "SystemServiceRegistry"

    #@10
    const-string/jumbo v3, "Failed to get recovery service."

    #@13
    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 399
    :cond_0
    new-instance v2, Landroid/os/RecoverySystem;

    #@18
    invoke-direct {v2, v1}, Landroid/os/RecoverySystem;-><init>(Landroid/os/IRecoverySystem;)V

    #@1b
    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 393
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$29;->createService(Landroid/app/ContextImpl;)Landroid/os/RecoverySystem;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
