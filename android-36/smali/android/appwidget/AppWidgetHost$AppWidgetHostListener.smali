.class public interface abstract Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;
.super Ljava/lang/Object;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppWidgetHostListener"
.end annotation


# virtual methods
.method public abstract blacklist onUpdateProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;)V
.end method

.method public abstract blacklist onViewDataChanged(I)V
.end method

.method public abstract blacklist updateAppWidget(Landroid/widget/RemoteViews;)V
.end method

.method public blacklist updateAppWidgetDeferred(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I

    .line 541
    const/4 v0, 0x0

    .line 543
    .local v0, "latestViews":Landroid/widget/RemoteViews;
    :try_start_1
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_9

    move-object v0, v1

    .line 546
    goto :goto_12

    .line 544
    :catch_9
    move-exception v1

    .line 545
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AppWidgetHost"

    const-string/jumbo v3, "updateAppWidgetDeferred: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_12
    invoke-interface {p0, v0}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 548
    return-void
.end method
