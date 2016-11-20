.class Landroid/appwidget/AppWidgetHost$Callbacks;
.super Lcom/android/internal/appwidget/IAppWidgetHost$Stub;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Callbacks"
.end annotation


# instance fields
.field private final mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;-><init>()V

    #@3
    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    #@a
    .line 72
    return-void
.end method

.method private static isLocalBinder()Z
    .locals 2

    #@0
    .prologue
    .line 120
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@3
    move-result v0

    #@4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method


# virtual methods
.method public providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 4
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    #@0
    .prologue
    .line 89
    invoke-static {}, Landroid/appwidget/AppWidgetHost$Callbacks;->isLocalBinder()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    if-eqz p2, :cond_0

    #@8
    .line 90
    invoke-virtual {p2}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    #@b
    move-result-object p2

    #@c
    .line 92
    :cond_0
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    #@e
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/os/Handler;

    #@14
    .line 93
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    #@16
    .line 94
    return-void

    #@17
    .line 96
    :cond_1
    const/4 v2, 0x2

    #@18
    .line 97
    const/4 v3, 0x0

    #@19
    .line 96
    invoke-virtual {v0, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1c
    move-result-object v1

    #@1d
    .line 98
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@20
    .line 88
    return-void
.end method

.method public providersChanged()V
    .locals 2

    #@0
    .prologue
    .line 102
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/Handler;

    #@8
    .line 103
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    #@a
    .line 104
    return-void

    #@b
    .line 106
    :cond_0
    const/4 v1, 0x3

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@13
    .line 101
    return-void
.end method

.method public updateAppWidget(ILandroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 77
    invoke-static {}, Landroid/appwidget/AppWidgetHost$Callbacks;->isLocalBinder()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    if-eqz p2, :cond_0

    #@8
    .line 78
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    #@b
    move-result-object p2

    #@c
    .line 80
    :cond_0
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    #@e
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/os/Handler;

    #@14
    .line 81
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    #@16
    .line 82
    return-void

    #@17
    .line 84
    :cond_1
    const/4 v2, 0x1

    #@18
    const/4 v3, 0x0

    #@19
    invoke-virtual {v0, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1c
    move-result-object v1

    #@1d
    .line 85
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@20
    .line 76
    return-void
.end method

.method public viewDataChanged(II)V
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I

    #@0
    .prologue
    .line 110
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/Handler;

    #@8
    .line 111
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    #@a
    .line 112
    return-void

    #@b
    .line 114
    :cond_0
    const/4 v2, 0x4

    #@c
    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@f
    move-result-object v1

    #@10
    .line 116
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@13
    .line 109
    return-void
.end method
