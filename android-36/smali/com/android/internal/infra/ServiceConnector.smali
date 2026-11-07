.class public interface abstract Lcom/android/internal/infra/ServiceConnector;
.super Ljava/lang/Object;
.source "ServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/infra/ServiceConnector$NoOp;,
        Lcom/android/internal/infra/ServiceConnector$Impl;,
        Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;,
        Lcom/android/internal/infra/ServiceConnector$VoidJob;,
        Lcom/android/internal/infra/ServiceConnector$Job;
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
.method public abstract blacklist connect()Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TI;>;"
        }
    .end annotation
.end method

.method public abstract blacklist post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$VoidJob<",
            "TI;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TR;>;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TR;>;"
        }
    .end annotation
.end method

.method public abstract blacklist postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;TR;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TR;>;"
        }
    .end annotation
.end method

.method public abstract blacklist run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$VoidJob<",
            "TI;>;)Z"
        }
    .end annotation
.end method

.method public abstract blacklist setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<",
            "TI;>;)V"
        }
    .end annotation
.end method

.method public abstract blacklist unbind()V
.end method
