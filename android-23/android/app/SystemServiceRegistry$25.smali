.class final Landroid/app/SystemServiceRegistry$25;
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
        "Landroid/net/NetworkPolicyManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 334
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/net/NetworkPolicyManager;
    .locals 2
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 337
    new-instance v0, Landroid/net/NetworkPolicyManager;

    #@2
    .line 338
    const-string/jumbo v1, "netpolicy"

    #@5
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@8
    move-result-object v1

    #@9
    .line 337
    invoke-static {v1}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    #@c
    move-result-object v1

    #@d
    invoke-direct {v0, p1, v1}, Landroid/net/NetworkPolicyManager;-><init>(Landroid/content/Context;Landroid/net/INetworkPolicyManager;)V

    #@10
    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 336
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$25;->createService(Landroid/app/ContextImpl;)Landroid/net/NetworkPolicyManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
