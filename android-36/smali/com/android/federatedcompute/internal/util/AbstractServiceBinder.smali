.class public abstract Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;
.super Ljava/lang/Object;
.source "AbstractServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    .local p0, "this":Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;, "Lcom/android/federatedcompute/internal/util/AbstractServiceBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getIsolatedServiceBinderByServiceName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "servicePackage"    # Ljava/lang/String;
    .param p3, "isolatedProcessName"    # Ljava/lang/String;
    .param p4, "bindFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT2;>;)",
            "Lcom/android/federatedcompute/internal/util/AbstractServiceBinder<",
            "TT2;>;"
        }
    .end annotation

    .line 81
    .local p5, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT2;>;"
    new-instance v0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p5

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "serviceName":Ljava/lang/String;
    .end local p2    # "servicePackage":Ljava/lang/String;
    .end local p3    # "isolatedProcessName":Ljava/lang/String;
    .end local p4    # "bindFlags":I
    .end local p5    # "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT2;>;"
    .local v1, "context":Landroid/content/Context;
    .local v2, "serviceName":Ljava/lang/String;
    .local v3, "servicePackage":Ljava/lang/String;
    .local v4, "isolatedProcessName":Ljava/lang/String;
    .local v6, "bindFlags":I
    .local v7, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT2;>;"
    invoke-direct/range {v0 .. v7}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/function/Function;)V

    return-object v0
.end method

.method public static blacklist getServiceBinderByIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceIntentAction"    # Ljava/lang/String;
    .param p2, "servicePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT2;>;)",
            "Lcom/android/federatedcompute/internal/util/AbstractServiceBinder<",
            "TT2;>;"
        }
    .end annotation

    .line 38
    .local p3, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT2;>;"
    new-instance v0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static blacklist getServiceBinderByIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILjava/util/function/Function;)Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceIntentAction"    # Ljava/lang/String;
    .param p3, "bindFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT2;>;)",
            "Lcom/android/federatedcompute/internal/util/AbstractServiceBinder<",
            "TT2;>;"
        }
    .end annotation

    .line 69
    .local p2, "servicePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT2;>;"
    new-instance v0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "serviceIntentAction":Ljava/lang/String;
    .end local p2    # "servicePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p3    # "bindFlags":I
    .end local p4    # "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT2;>;"
    .local v1, "context":Landroid/content/Context;
    .local v2, "serviceIntentAction":Ljava/lang/String;
    .local v3, "servicePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "bindFlags":I
    .local v5, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT2;>;"
    invoke-direct/range {v0 .. v5}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILjava/util/function/Function;)V

    return-object v0
.end method

.method public static blacklist getServiceBinderByIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/function/Function;)Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceIntentAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT2;>;)",
            "Lcom/android/federatedcompute/internal/util/AbstractServiceBinder<",
            "TT2;>;"
        }
    .end annotation

    .line 58
    .local p2, "servicePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT2;>;"
    new-instance v0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static blacklist getServiceBinderByServiceName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "servicePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT2;>;)",
            "Lcom/android/federatedcompute/internal/util/AbstractServiceBinder<",
            "TT2;>;"
        }
    .end annotation

    .line 48
    .local p3, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT2;>;"
    new-instance v0, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "serviceName":Ljava/lang/String;
    .end local p2    # "servicePackage":Ljava/lang/String;
    .end local p3    # "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT2;>;"
    .local v1, "context":Landroid/content/Context;
    .local v2, "serviceName":Ljava/lang/String;
    .local v3, "servicePackage":Ljava/lang/String;
    .local v5, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT2;>;"
    invoke-direct/range {v0 .. v5}, Lcom/android/federatedcompute/internal/util/AndroidServiceBinder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Function;)V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist getService(Ljava/util/concurrent/Executor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract blacklist unbindFromService()V
.end method
