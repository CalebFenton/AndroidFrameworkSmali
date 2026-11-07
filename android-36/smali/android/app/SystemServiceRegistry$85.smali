.class Landroid/app/SystemServiceRegistry$85;
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
        "Landroid/appwidget/AppWidgetManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1144
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/appwidget/AppWidgetManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 1147
    const-string v0, "appwidget"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1148
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_13

    :cond_a
    new-instance v1, Landroid/appwidget/AppWidgetManager;

    .line 1149
    invoke-static {v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/appwidget/AppWidgetManager;-><init>(Landroid/content/Context;Lcom/android/internal/appwidget/IAppWidgetService;)V

    .line 1148
    :goto_13
    return-object v1
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

    .line 1144
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$85;->createService(Landroid/app/ContextImpl;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    return-object p1
.end method
