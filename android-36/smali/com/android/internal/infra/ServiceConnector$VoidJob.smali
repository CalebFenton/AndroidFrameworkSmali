.class public interface abstract Lcom/android/internal/infra/ServiceConnector$VoidJob;
.super Ljava/lang/Object;
.source "ServiceConnector.java"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/infra/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VoidJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<II:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/infra/ServiceConnector$Job<",
        "TII;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public bridge synthetic blacklist run(Ljava/lang/Object;)Ljava/lang/Object;
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
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$VoidJob;, "Lcom/android/internal/infra/ServiceConnector$VoidJob<TII;>;"
    invoke-interface {p0, p1}, Lcom/android/internal/infra/ServiceConnector$VoidJob;->run(Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public blacklist run(Ljava/lang/Object;)Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TII;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$VoidJob;, "Lcom/android/internal/infra/ServiceConnector$VoidJob<TII;>;"
    .local p1, "service":Ljava/lang/Object;, "TII;"
    invoke-interface {p0, p1}, Lcom/android/internal/infra/ServiceConnector$VoidJob;->runNoResult(Ljava/lang/Object;)V

    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract blacklist runNoResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TII;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
