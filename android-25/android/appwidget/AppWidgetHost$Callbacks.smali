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
    .line 71
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;-><init>()V

    #@3
    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    #@a
    .line 71
    return-void
.end method

.method private static isLocalBinder()Z
    .locals 2

    #@0
    .prologue
    .line 119
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
    .line 88
    invoke-static {}, Landroid/appwidget/AppWidgetHost$Callbacks;->isLocalBinder()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    if-eqz p2, :cond_0

    #@8
    .line 89
    invoke-virtual {p2}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    #@b
    move-result-object p2

    #@c
    .line 91
    :cond_0
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    #@e
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/os/Handler;

    #@14
    .line 92
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    #@16
    .line 93
    return-void

    #@17
    .line 95
    :cond_1
    const/4 v2, 0x2

    #@18
    .line 96
    const/4 v3, 0x0

    #@19
    .line 95
    invoke-virtual {v0, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1c
    move-result-object v1

    #@1d
    .line 97
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@20
    .line 87
    return-void
.end method

.method public providersChanged()V
    .locals 2

    #@0
    .prologue
    .line 101
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/Handler;

    #@8
    .line 102
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    #@a
    .line 103
    return-void

    #@b
    .line 105
    :cond_0
    const/4 v1, 0x3

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@13
    .line 100
    return-void
.end method

.method public updateAppWidget(ILandroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 76
    invoke-static {}, Landroid/appwidget/AppWidgetHost$Callbacks;->isLocalBinder()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    if-eqz p2, :cond_0

    #@8
    .line 77
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    #@b
    move-result-object p2

    #@c
    .line 79
    :cond_0
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    #@e
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/os/Handler;

    #@14
    .line 80
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    #@16
    .line 81
    return-void

    #@17
    .line 83
    :cond_1
    const/4 v2, 0x1

    #@18
    const/4 v3, 0x0

    #@19
    invoke-virtual {v0, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1c
    move-result-object v1

    #@1d
    .line 84
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@20
    .line 75
    return-void
.end method

.method public viewDataChanged(II)V
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I

    #@0
    .prologue
    .line 109
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/Handler;

    #@8
    .line 110
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    #@a
    .line 111
    return-void

    #@b
    .line 113
    :cond_0
    const/4 v2, 0x4

    #@c
    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@f
    move-result-object v1

    #@10
    .line 115
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@13
    .line 108
    return-void
.end method
