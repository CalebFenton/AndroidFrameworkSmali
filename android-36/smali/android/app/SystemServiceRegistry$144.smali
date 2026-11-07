.class Landroid/app/SystemServiceRegistry$144;
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
        "Landroid/media/quality/MediaQualityManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1783
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/media/quality/MediaQualityManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1787
    nop

    .line 1788
    const-string/jumbo v0, "media_quality"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1789
    .local v0, "iBinder":Landroid/os/IBinder;
    nop

    .line 1790
    invoke-static {v0}, Landroid/media/quality/IMediaQualityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/quality/IMediaQualityManager;

    move-result-object v1

    .line 1791
    .local v1, "service":Landroid/media/quality/IMediaQualityManager;
    new-instance v2, Landroid/media/quality/MediaQualityManager;

    invoke-direct {v2, p1, v1}, Landroid/media/quality/MediaQualityManager;-><init>(Landroid/content/Context;Landroid/media/quality/IMediaQualityManager;)V

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

    .line 1783
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$144;->createService(Landroid/app/ContextImpl;)Landroid/media/quality/MediaQualityManager;

    move-result-object p1

    return-object p1
.end method
