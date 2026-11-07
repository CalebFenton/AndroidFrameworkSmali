.class public interface abstract Landroid/app/usage/ICacheQuotaService;
.super Ljava/lang/Object;
.source "ICacheQuotaService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/ICacheQuotaService$Stub;,
        Landroid/app/usage/ICacheQuotaService$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o computeCacheQuotaHints(Landroid/os/RemoteCallback;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallback;",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
