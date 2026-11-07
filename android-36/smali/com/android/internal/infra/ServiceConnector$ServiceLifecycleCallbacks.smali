.class public interface abstract Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;
.super Ljava/lang/Object;
.source "ServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/infra/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceLifecycleCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<II::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public blacklist onBinderDied()V
    .registers 1

    .line 225
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;, "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<TII;>;"
    return-void
.end method

.method public blacklist onConnected(Landroid/os/IInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TII;)V"
        }
    .end annotation

    .line 212
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;, "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<TII;>;"
    .local p1, "service":Landroid/os/IInterface;, "TII;"
    return-void
.end method

.method public blacklist onDisconnected(Landroid/os/IInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TII;)V"
        }
    .end annotation

    .line 217
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;, "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<TII;>;"
    .local p1, "service":Landroid/os/IInterface;, "TII;"
    return-void
.end method
