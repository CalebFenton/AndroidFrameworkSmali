.class Landroid/app/SystemServiceRegistry$77;
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
        "Landroid/media/tv/ad/TvAdManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1059
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/media/tv/ad/TvAdManager;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1063
    nop

    .line 1064
    const-string/jumbo v0, "tv_ad"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1065
    .local v0, "iBinder":Landroid/os/IBinder;
    nop

    .line 1066
    invoke-static {v0}, Landroid/media/tv/ad/ITvAdManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdManager;

    move-result-object v1

    .line 1067
    .local v1, "service":Landroid/media/tv/ad/ITvAdManager;
    new-instance v2, Landroid/media/tv/ad/TvAdManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/media/tv/ad/TvAdManager;-><init>(Landroid/media/tv/ad/ITvAdManager;I)V

    return-object v2
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

    .line 1059
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$77;->createService(Landroid/app/ContextImpl;)Landroid/media/tv/ad/TvAdManager;

    move-result-object p1

    return-object p1
.end method
