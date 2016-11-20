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
    .line 3395
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@2
    .line 3396
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 3395
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 3401
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 3400
    :goto_0
    return-void

    #@6
    .line 3403
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@a
    .line 3404
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@c
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@e
    .line 3405
    .local v2, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@10
    check-cast v3, Lcom/android/internal/appwidget/IAppWidgetHost;

    #@12
    .line 3406
    .local v3, "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@14
    check-cast v5, Landroid/widget/RemoteViews;

    #@16
    .line 3407
    .local v5, "views":Landroid/widget/RemoteViews;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@18
    check-cast v1, Ljava/lang/Long;

    #@1a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@1d
    move-result-wide v6

    #@1e
    .line 3408
    .local v6, "requestTime":J
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@20
    .line 3409
    .local v4, "appWidgetId":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@23
    .line 3411
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@25
    invoke-static/range {v1 .. v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap9(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V

    #@28
    goto :goto_0

    #@29
    .line 3415
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v3    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v4    # "appWidgetId":I
    .end local v5    # "views":Landroid/widget/RemoteViews;
    .end local v6    # "requestTime":J
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2b
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@2d
    .line 3416
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@2f
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@31
    .line 3417
    .restart local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@33
    check-cast v3, Lcom/android/internal/appwidget/IAppWidgetHost;

    #@35
    .line 3418
    .restart local v3    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@37
    check-cast v8, Landroid/appwidget/AppWidgetProviderInfo;

    #@39
    .line 3419
    .local v8, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@3b
    .line 3420
    .restart local v4    # "appWidgetId":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@3e
    .line 3422
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@40
    invoke-static {v1, v2, v3, v4, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap7(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;)V

    #@43
    goto :goto_0

    #@44
    .line 3426
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v3    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v4    # "appWidgetId":I
    .end local v8    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@46
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@48
    .line 3427
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@4a
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@4c
    .line 3428
    .restart local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@4e
    check-cast v3, Lcom/android/internal/appwidget/IAppWidgetHost;

    #@50
    .line 3429
    .restart local v3    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@53
    .line 3431
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@55
    invoke-static {v1, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap8(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V

    #@58
    goto :goto_0

    #@59
    .line 3435
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v3    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5b
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@5d
    .line 3436
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@5f
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@61
    .line 3437
    .restart local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@63
    check-cast v3, Lcom/android/internal/appwidget/IAppWidgetHost;

    #@65
    .line 3438
    .restart local v3    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@67
    .line 3439
    .restart local v4    # "appWidgetId":I
    iget v9, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@69
    .line 3440
    .local v9, "viewId":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@6c
    .line 3442
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@6e
    invoke-static {v1, v2, v3, v4, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap6(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;II)V

    #@71
    goto :goto_0

    #@72
    .line 3401
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
