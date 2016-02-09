.class Lcom/android/server/appwidget/AppWidgetServiceImpl$2;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;->destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p2, "val$intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1477
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@2
    iput-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->val$intent:Landroid/content/Intent;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1480
    invoke-static {p2}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    #@3
    move-result-object v0

    #@4
    .line 1482
    .local v0, "cb":Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->val$intent:Landroid/content/Intent;

    #@6
    invoke-interface {v0, v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDestroy(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1486
    :goto_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@b
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get2(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@12
    .line 1479
    return-void

    #@13
    .line 1483
    :catch_0
    move-exception v1

    #@14
    .line 1484
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AppWidgetServiceImpl"

    #@17
    const-string/jumbo v3, "Error calling remove view factory"

    #@1a
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1490
    return-void
.end method
