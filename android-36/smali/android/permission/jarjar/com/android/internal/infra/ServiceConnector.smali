.class public interface abstract Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;
.super Ljava/lang/Object;
.source "ServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$NoOp;,
        Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;,
        Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;,
        Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$VoidJob;,
        Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract blacklist connect()Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "TI;>;"
        }
    .end annotation
.end method

.method public abstract blacklist post(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$VoidJob;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$VoidJob<",
            "TI;>;)",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist postAsync(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job<",
            "TI;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TR;>;>;)",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "TR;>;"
        }
    .end annotation
.end method

.method public abstract blacklist postForResult(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job<",
            "TI;TR;>;)",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "TR;>;"
        }
    .end annotation
.end method

.method public abstract blacklist run(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$VoidJob;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$VoidJob<",
            "TI;>;)Z"
        }
    .end annotation
.end method

.method public abstract blacklist setServiceLifecycleCallbacks(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<",
            "TI;>;)V"
        }
    .end annotation
.end method

.method public abstract blacklist unbind()V
.end method
