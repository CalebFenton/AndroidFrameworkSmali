.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Widget"
.end annotation


# instance fields
.field appWidgetId:I

.field host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

.field maskedViews:Landroid/widget/RemoteViews;

.field options:Landroid/os/Bundle;

.field provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

.field restoredId:I

.field updateTimes:Landroid/util/SparseLongArray;

.field views:Landroid/widget/RemoteViews;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->clearMaskedViewsLocked()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)Z
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->replaceWithMaskedViewsLocked(Landroid/widget/RemoteViews;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 3911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3920
    new-instance v0, Landroid/util/SparseLongArray;

    #@5
    const/4 v1, 0x2

    #@6
    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    #@9
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateTimes:Landroid/util/SparseLongArray;

    #@b
    .line 3911
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>()V

    #@3
    return-void
.end method

.method private clearMaskedViewsLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3933
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 3934
    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    #@7
    .line 3935
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 3937
    :cond_0
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method private replaceWithMaskedViewsLocked(Landroid/widget/RemoteViews;)Z
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 3928
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    #@2
    .line 3929
    const/4 v0, 0x1

    #@3
    return v0
.end method


# virtual methods
.method public getEffectiveViewsLocked()Landroid/widget/RemoteViews;
    .locals 1

    #@0
    .prologue
    .line 3942
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    #@9
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x3a

    #@2
    .line 3924
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "AppWidgetId{"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    const/16 v1, 0x7d

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    return-object v0
.end method
