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
    .line 3419
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@2
    .line 3420
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 3419
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 3425
    move-object/from16 v0, p1

    #@2
    iget v3, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v3, :pswitch_data_0

    #@7
    .line 3424
    :goto_0
    return-void

    #@8
    .line 3427
    :pswitch_0
    move-object/from16 v0, p1

    #@a
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    #@e
    .line 3428
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@10
    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@12
    .line 3429
    .local v4, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@14
    check-cast v5, Lcom/android/internal/appwidget/IAppWidgetHost;

    #@16
    .line 3430
    .local v5, "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v7, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@18
    check-cast v7, Landroid/widget/RemoteViews;

    #@1a
    .line 3431
    .local v7, "views":Landroid/widget/RemoteViews;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@1c
    check-cast v3, Ljava/lang/Long;

    #@1e
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@21
    move-result-wide v8

    #@22
    .line 3432
    .local v8, "requestTime":J
    iget v6, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@24
    .line 3433
    .local v6, "appWidgetId":I
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@27
    .line 3435
    move-object/from16 v0, p0

    #@29
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@2b
    invoke-static/range {v3 .. v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap9(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V

    #@2e
    goto :goto_0

    #@2f
    .line 3439
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v5    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v6    # "appWidgetId":I
    .end local v7    # "views":Landroid/widget/RemoteViews;
    .end local v8    # "requestTime":J
    :pswitch_1
    move-object/from16 v0, p1

    #@31
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@33
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    #@35
    .line 3440
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@37
    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@39
    .line 3441
    .restart local v4    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@3b
    check-cast v5, Lcom/android/internal/appwidget/IAppWidgetHost;

    #@3d
    .line 3442
    .restart local v5    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v15, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@3f
    check-cast v15, Landroid/appwidget/AppWidgetProviderInfo;

    #@41
    .line 3443
    .local v15, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@43
    check-cast v3, Ljava/lang/Long;

    #@45
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@48
    move-result-wide v8

    #@49
    .line 3444
    .restart local v8    # "requestTime":J
    iget v6, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@4b
    .line 3445
    .restart local v6    # "appWidgetId":I
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@4e
    .line 3447
    move-object/from16 v0, p0

    #@50
    iget-object v11, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@52
    move-object v12, v4

    #@53
    move-object v13, v5

    #@54
    move v14, v6

    #@55
    move-wide/from16 v16, v8

    #@57
    invoke-static/range {v11 .. v17}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap7(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V

    #@5a
    goto :goto_0

    #@5b
    .line 3451
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v5    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v6    # "appWidgetId":I
    .end local v8    # "requestTime":J
    .end local v15    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :pswitch_2
    move-object/from16 v0, p1

    #@5d
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5f
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    #@61
    .line 3452
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@63
    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@65
    .line 3453
    .restart local v4    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@67
    check-cast v5, Lcom/android/internal/appwidget/IAppWidgetHost;

    #@69
    .line 3454
    .restart local v5    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@6c
    .line 3456
    move-object/from16 v0, p0

    #@6e
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@70
    invoke-static {v3, v4, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap8(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V

    #@73
    goto :goto_0

    #@74
    .line 3460
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v5    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    :pswitch_3
    move-object/from16 v0, p1

    #@76
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@78
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    #@7a
    .line 3461
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@7c
    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@7e
    .line 3462
    .restart local v4    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@80
    check-cast v5, Lcom/android/internal/appwidget/IAppWidgetHost;

    #@82
    .line 3463
    .restart local v5    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@84
    check-cast v3, Ljava/lang/Long;

    #@86
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@89
    move-result-wide v8

    #@8a
    .line 3464
    .restart local v8    # "requestTime":J
    iget v6, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@8c
    .line 3465
    .restart local v6    # "appWidgetId":I
    iget v0, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@8e
    move/from16 v21, v0

    #@90
    .line 3466
    .local v21, "viewId":I
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@93
    .line 3468
    move-object/from16 v0, p0

    #@95
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@97
    move-object/from16 v17, v0

    #@99
    move-object/from16 v18, v4

    #@9b
    move-object/from16 v19, v5

    #@9d
    move/from16 v20, v6

    #@9f
    move-wide/from16 v22, v8

    #@a1
    invoke-static/range {v17 .. v23}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap6(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V

    #@a4
    goto/16 :goto_0

    #@a6
    .line 3425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
