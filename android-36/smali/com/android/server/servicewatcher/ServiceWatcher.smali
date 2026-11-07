.class public interface abstract Lcom/android/server/servicewatcher/ServiceWatcher;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;,
        Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;,
        Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;,
        Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;,
        Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;
    }
.end annotation


# direct methods
.method public static blacklist create(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TBoundServiceInfo:",
            "Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;)",
            "Lcom/android/server/servicewatcher/ServiceWatcher;"
        }
    .end annotation

    .line 259
    .local p3, "serviceSupplier":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<TTBoundServiceInfo;>;"
    .local p4, "serviceListener":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<-TTBoundServiceInfo;>;"
    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "handler":Landroid/os/Handler;
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "serviceSupplier":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<TTBoundServiceInfo;>;"
    .end local p4    # "serviceListener":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<-TTBoundServiceInfo;>;"
    .local v1, "context":Landroid/content/Context;
    .local v2, "handler":Landroid/os/Handler;
    .local v3, "tag":Ljava/lang/String;
    .local v4, "serviceSupplier":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<TTBoundServiceInfo;>;"
    .local v5, "serviceListener":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<-TTBoundServiceInfo;>;"
    invoke-direct/range {v0 .. v5}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)V

    return-object v0
.end method

.method public static blacklist create(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "unstableFallbackEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TBoundServiceInfo:",
            "Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;)",
            "Lcom/android/server/servicewatcher/ServiceWatcher;"
        }
    .end annotation

    .line 272
    .local p4, "serviceSupplier":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<TTBoundServiceInfo;>;"
    .local p5, "serviceListener":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<-TTBoundServiceInfo;>;"
    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "handler":Landroid/os/Handler;
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "unstableFallbackEnabled":Z
    .end local p4    # "serviceSupplier":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<TTBoundServiceInfo;>;"
    .end local p5    # "serviceListener":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<-TTBoundServiceInfo;>;"
    .local v1, "context":Landroid/content/Context;
    .local v2, "handler":Landroid/os/Handler;
    .local v3, "tag":Ljava/lang/String;
    .local v4, "unstableFallbackEnabled":Z
    .local v5, "serviceSupplier":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<TTBoundServiceInfo;>;"
    .local v6, "serviceListener":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<-TTBoundServiceInfo;>;"
    invoke-direct/range {v0 .. v6}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)V

    return-object v0
.end method

.method public static blacklist create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TBoundServiceInfo:",
            "Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;)",
            "Lcom/android/server/servicewatcher/ServiceWatcher;"
        }
    .end annotation

    .line 234
    .local p2, "serviceSupplier":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<TTBoundServiceInfo;>;"
    .local p3, "serviceListener":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<-TTBoundServiceInfo;>;"
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist create(Landroid/content/Context;Ljava/lang/String;ZLcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "unstableFallbackEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TBoundServiceInfo:",
            "Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;)",
            "Lcom/android/server/servicewatcher/ServiceWatcher;"
        }
    .end annotation

    .line 246
    .local p3, "serviceSupplier":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<TTBoundServiceInfo;>;"
    .local p4, "serviceListener":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<-TTBoundServiceInfo;>;"
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "unstableFallbackEnabled":Z
    .end local p3    # "serviceSupplier":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<TTBoundServiceInfo;>;"
    .end local p4    # "serviceListener":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<-TTBoundServiceInfo;>;"
    .local v0, "context":Landroid/content/Context;
    .local v2, "tag":Ljava/lang/String;
    .local v3, "unstableFallbackEnabled":Z
    .local v4, "serviceSupplier":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<TTBoundServiceInfo;>;"
    .local v5, "serviceListener":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<-TTBoundServiceInfo;>;"
    invoke-static/range {v0 .. v5}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract blacklist checkServiceResolves()Z
.end method

.method public abstract blacklist dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract blacklist register()V
.end method

.method public abstract blacklist runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V
.end method

.method public abstract blacklist unregister()V
.end method
