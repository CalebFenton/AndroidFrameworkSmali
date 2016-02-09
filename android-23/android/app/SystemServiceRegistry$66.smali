.class final Landroid/app/SystemServiceRegistry$66;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/appwidget/AppWidgetManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 683
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/appwidget/AppWidgetManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 686
    const-string/jumbo v1, "appwidget"

    #@3
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 687
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/appwidget/AppWidgetManager;

    #@9
    invoke-static {v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, p1, v2}, Landroid/appwidget/AppWidgetManager;-><init>(Landroid/content/Context;Lcom/android/internal/appwidget/IAppWidgetService;)V

    #@10
    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 685
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$66;->createService(Landroid/app/ContextImpl;)Landroid/appwidget/AppWidgetManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
