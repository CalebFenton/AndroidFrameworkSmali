.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;
.super Landroid/os/Handler;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackHandler"
.end annotation


# static fields
.field public static final MSG_NOTIFY_PROVIDERS_CHANGED:I = 0x3

.field public static final MSG_NOTIFY_PROVIDER_CHANGED:I = 0x2

.field public static final MSG_NOTIFY_UPDATE_APP_WIDGET:I = 0x1

.field public static final MSG_NOTIFY_VIEW_DATA_CHANGED:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 3065
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@2
    .line 3066
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 3065
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 3071
    iget v7, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v7, :pswitch_data_0

    #@5
    .line 3070
    :goto_0
    return-void

    #@6
    .line 3073
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@a
    .line 3074
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@c
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@e
    .line 3075
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@10
    check-cast v2, Lcom/android/internal/appwidget/IAppWidgetHost;

    #@12
    .line 3076
    .local v2, "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@14
    check-cast v6, Landroid/widget/RemoteViews;

    #@16
    .line 3077
    .local v6, "views":Landroid/widget/RemoteViews;
    iget v0, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@18
    .line 3078
    .local v0, "appWidgetId":I
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1b
    .line 3080
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@1d
    invoke-static {v7, v3, v2, v0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap7(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;)V

    #@20
    goto :goto_0

    #@21
    .line 3084
    .end local v0    # "appWidgetId":I
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v6    # "views":Landroid/widget/RemoteViews;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@23
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@25
    .line 3085
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@27
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@29
    .line 3086
    .restart local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@2b
    check-cast v2, Lcom/android/internal/appwidget/IAppWidgetHost;

    #@2d
    .line 3087
    .restart local v2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@2f
    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    #@31
    .line 3088
    .local v4, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget v0, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@33
    .line 3089
    .restart local v0    # "appWidgetId":I
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@36
    .line 3091
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@38
    invoke-static {v7, v3, v2, v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap5(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;)V

    #@3b
    goto :goto_0

    #@3c
    .line 3095
    .end local v0    # "appWidgetId":I
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v4    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3e
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@40
    .line 3096
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@42
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@44
    .line 3097
    .restart local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@46
    check-cast v2, Lcom/android/internal/appwidget/IAppWidgetHost;

    #@48
    .line 3098
    .restart local v2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@4b
    .line 3100
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@4d
    invoke-static {v7, v3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap6(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V

    #@50
    goto :goto_0

    #@51
    .line 3104
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@53
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@55
    .line 3105
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@57
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@59
    .line 3106
    .restart local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@5b
    check-cast v2, Lcom/android/internal/appwidget/IAppWidgetHost;

    #@5d
    .line 3107
    .restart local v2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget v0, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@5f
    .line 3108
    .restart local v0    # "appWidgetId":I
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@61
    .line 3109
    .local v5, "viewId":I
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@64
    .line 3111
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@66
    invoke-static {v7, v3, v2, v0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap4(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;II)V

    #@69
    goto :goto_0

    #@6a
    .line 3071
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
