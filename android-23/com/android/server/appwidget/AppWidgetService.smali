.class public Lcom/android/server/appwidget/AppWidgetService;
.super Lcom/android/server/SystemService;
.source "AppWidgetService.java"


# instance fields
.field private final mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 32
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@5
    invoke-direct {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;-><init>(Landroid/content/Context;)V

    #@8
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@a
    .line 30
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 43
    const/16 v0, 0x258

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 44
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@6
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetService;->isSafeMode()Z

    #@9
    move-result v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->setSafeMode(Z)V

    #@d
    .line 42
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 37
    const-string/jumbo v0, "appwidget"

    #@3
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@8
    .line 38
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@a
    invoke-static {v0}, Lcom/android/server/AppWidgetBackupBridge;->register(Lcom/android/server/WidgetBackupProvider;)V

    #@d
    .line 36
    return-void
.end method
