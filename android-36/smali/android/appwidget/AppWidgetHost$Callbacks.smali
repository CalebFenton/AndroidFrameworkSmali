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
.field private final greylist-max-o mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 83
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    .line 85
    return-void
.end method

.method private static greylist-max-o isLocalBinder()Z
    .registers 2

    .line 148
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public blacklist appWidgetRemoved(I)V
    .registers 5
    .param p1, "appWidgetId"    # I

    .line 113
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 114
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 115
    return-void

    .line 117
    :cond_b
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 118
    return-void
.end method

.method public greylist-max-o providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .registers 6
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 100
    invoke-static {}, Landroid/appwidget/AppWidgetHost$Callbacks;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p2, :cond_c

    .line 101
    invoke-virtual {p2}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p2

    .line 103
    :cond_c
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 104
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_17

    .line 105
    return-void

    .line 107
    :cond_17
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 109
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 110
    return-void
.end method

.method public greylist-max-o providersChanged()V
    .registers 3

    .line 121
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 122
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 123
    return-void

    .line 125
    :cond_b
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 126
    return-void
.end method

.method public greylist-max-o updateAppWidget(ILandroid/widget/RemoteViews;)V
    .registers 6
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .line 88
    invoke-static {}, Landroid/appwidget/AppWidgetHost$Callbacks;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p2, :cond_c

    .line 89
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p2

    .line 91
    :cond_c
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 92
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_17

    .line 93
    return-void

    .line 95
    :cond_17
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 96
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 97
    return-void
.end method

.method public blacklist updateAppWidgetDeferred(I)V
    .registers 6
    .param p1, "appWidgetId"    # I

    .line 139
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 140
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 141
    return-void

    .line 143
    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 144
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 145
    return-void
.end method

.method public greylist-max-o viewDataChanged(II)V
    .registers 5
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I

    .line 129
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 130
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 131
    return-void

    .line 133
    :cond_b
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 135
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 136
    return-void
.end method
