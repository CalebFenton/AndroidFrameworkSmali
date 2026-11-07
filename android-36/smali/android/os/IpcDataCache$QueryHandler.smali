.class public abstract Landroid/os/IpcDataCache$QueryHandler;
.super Landroid/app/PropertyInvalidatedCache$QueryHandler;
.source "IpcDataCache.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IpcDataCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
        "TQ;TR;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 269
    .local p0, "this":Landroid/os/IpcDataCache$QueryHandler;, "Landroid/os/IpcDataCache$QueryHandler<TQ;TR;>;"
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQ;)TR;"
        }
    .end annotation
.end method

.method public blacklist shouldBypassCache(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQ;)Z"
        }
    .end annotation

    .line 281
    .local p0, "this":Landroid/os/IpcDataCache$QueryHandler;, "Landroid/os/IpcDataCache$QueryHandler<TQ;TR;>;"
    .local p1, "query":Ljava/lang/Object;, "TQ;"
    const/4 v0, 0x0

    return v0
.end method
