.class Landroid/os/IpcDataCache$1;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "IpcDataCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/IpcDataCache$QueryHandler<",
        "TQuery;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$remoteCall:Landroid/os/IpcDataCache$RemoteCall;


# direct methods
.method constructor blacklist <init>(Landroid/os/IpcDataCache$RemoteCall;)V
    .registers 2

    .line 620
    .local p0, "this":Landroid/os/IpcDataCache$1;, "Landroid/os/IpcDataCache$1;"
    iput-object p1, p0, Landroid/os/IpcDataCache$1;->val$remoteCall:Landroid/os/IpcDataCache$RemoteCall;

    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    .line 624
    .local p0, "this":Landroid/os/IpcDataCache$1;, "Landroid/os/IpcDataCache$1;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    :try_start_0
    iget-object v0, p0, Landroid/os/IpcDataCache$1;->val$remoteCall:Landroid/os/IpcDataCache$RemoteCall;

    invoke-interface {v0, p1}, Landroid/os/IpcDataCache$RemoteCall;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 625
    :catch_7
    move-exception v0

    .line 626
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
