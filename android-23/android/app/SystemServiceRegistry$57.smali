.class final Landroid/app/SystemServiceRegistry$57;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher",
        "<",
        "Landroid/app/trust/TrustManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 604
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService()Landroid/app/trust/TrustManager;
    .locals 2

    #@0
    .prologue
    .line 607
    const-string/jumbo v1, "trust"

    #@3
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 608
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/app/trust/TrustManager;

    #@9
    invoke-direct {v1, v0}, Landroid/app/trust/TrustManager;-><init>(Landroid/os/IBinder;)V

    #@c
    return-object v1
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 606
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$57;->createService()Landroid/app/trust/TrustManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
