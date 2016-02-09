.class Landroid/appwidget/AppWidgetHost$UpdateHandler;
.super Landroid/os/Handler;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/appwidget/AppWidgetHost;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetHost;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/appwidget/AppWidgetHost;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 124
    iput-object p1, p0, Landroid/appwidget/AppWidgetHost$UpdateHandler;->this$0:Landroid/appwidget/AppWidgetHost;

    #@2
    .line 125
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 124
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 128
    :goto_0
    return-void

    #@6
    .line 131
    :pswitch_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost$UpdateHandler;->this$0:Landroid/appwidget/AppWidgetHost;

    #@8
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    check-cast v0, Landroid/widget/RemoteViews;

    #@e
    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetView(ILandroid/widget/RemoteViews;)V

    #@11
    goto :goto_0

    #@12
    .line 135
    :pswitch_1
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost$UpdateHandler;->this$0:Landroid/appwidget/AppWidgetHost;

    #@14
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@18
    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    #@1a
    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    #@1d
    goto :goto_0

    #@1e
    .line 139
    :pswitch_2
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$UpdateHandler;->this$0:Landroid/appwidget/AppWidgetHost;

    #@20
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->onProvidersChanged()V

    #@23
    goto :goto_0

    #@24
    .line 143
    :pswitch_3
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$UpdateHandler;->this$0:Landroid/appwidget/AppWidgetHost;

    #@26
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@28
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@2a
    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetHost;->viewDataChanged(II)V

    #@2d
    goto :goto_0

    #@2e
    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
