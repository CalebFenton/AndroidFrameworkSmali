.class final Landroid/app/SystemServiceRegistry$11;
.super Landroid/app/SystemServiceRegistry$StaticOuterContextServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticOuterContextServiceFetcher",
        "<",
        "Landroid/net/ConnectivityManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 223
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticOuterContextServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 226
    const-string/jumbo v2, "connectivity"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 227
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    #@a
    move-result-object v1

    #@b
    .line 228
    .local v1, "service":Landroid/net/IConnectivityManager;
    new-instance v2, Landroid/net/ConnectivityManager;

    #@d
    invoke-direct {v2, p1, v1}, Landroid/net/ConnectivityManager;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V

    #@10
    return-object v2
.end method

.method public bridge synthetic createService(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 225
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$11;->createService(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
