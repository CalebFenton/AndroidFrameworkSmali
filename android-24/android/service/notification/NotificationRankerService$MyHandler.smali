.class final Landroid/service/notification/NotificationRankerService$MyHandler;
.super Landroid/os/Handler;
.source "NotificationRankerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationRankerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_ON_NOTIFICATION_ACTION_CLICK:I = 0x4

.field public static final MSG_ON_NOTIFICATION_CLICK:I = 0x3

.field public static final MSG_ON_NOTIFICATION_ENQUEUED:I = 0x1

.field public static final MSG_ON_NOTIFICATION_REMOVED_REASON:I = 0x5

.field public static final MSG_ON_NOTIFICATION_VISIBILITY_CHANGED:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/service/notification/NotificationRankerService;


# direct methods
.method public constructor <init>(Landroid/service/notification/NotificationRankerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/service/notification/NotificationRankerService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 287
    iput-object p1, p0, Landroid/service/notification/NotificationRankerService$MyHandler;->this$0:Landroid/service/notification/NotificationRankerService;

    #@2
    .line 288
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 287
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    .line 293
    iget v11, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v11, :pswitch_data_0

    #@6
    .line 292
    :cond_0
    :goto_0
    return-void

    #@7
    .line 295
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    #@b
    .line 296
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@d
    check-cast v6, Landroid/service/notification/StatusBarNotification;

    #@f
    .line 297
    .local v6, "sbn":Landroid/service/notification/StatusBarNotification;
    iget v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@11
    .line 298
    .local v3, "importance":I
    iget v11, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@13
    if-ne v11, v12, :cond_1

    #@15
    const/4 v7, 0x1

    #@16
    .line 299
    .local v7, "user":Z
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@19
    .line 300
    iget-object v11, p0, Landroid/service/notification/NotificationRankerService$MyHandler;->this$0:Landroid/service/notification/NotificationRankerService;

    #@1b
    invoke-virtual {v11, v6, v3, v7}, Landroid/service/notification/NotificationRankerService;->onNotificationEnqueued(Landroid/service/notification/StatusBarNotification;IZ)Landroid/service/notification/Adjustment;

    #@1e
    move-result-object v1

    #@1f
    .line 301
    .local v1, "adjustment":Landroid/service/notification/Adjustment;
    if-eqz v1, :cond_0

    #@21
    .line 302
    iget-object v11, p0, Landroid/service/notification/NotificationRankerService$MyHandler;->this$0:Landroid/service/notification/NotificationRankerService;

    #@23
    invoke-virtual {v11, v1}, Landroid/service/notification/NotificationRankerService;->adjustNotification(Landroid/service/notification/Adjustment;)V

    #@26
    goto :goto_0

    #@27
    .line 298
    .end local v1    # "adjustment":Landroid/service/notification/Adjustment;
    .end local v7    # "user":Z
    :cond_1
    const/4 v7, 0x0

    #@28
    .restart local v7    # "user":Z
    goto :goto_1

    #@29
    .line 307
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "importance":I
    .end local v6    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v7    # "user":Z
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2b
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    #@2d
    .line 308
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@2f
    check-cast v4, Ljava/lang/String;

    #@31
    .line 309
    .local v4, "key":Ljava/lang/String;
    iget-object v11, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@33
    check-cast v11, Ljava/lang/Long;

    #@35
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    #@38
    move-result-wide v8

    #@39
    .line 310
    .local v8, "time":J
    iget v11, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@3b
    if-ne v11, v12, :cond_2

    #@3d
    const/4 v10, 0x1

    #@3e
    .line 311
    .local v10, "visible":Z
    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@41
    .line 312
    iget-object v11, p0, Landroid/service/notification/NotificationRankerService$MyHandler;->this$0:Landroid/service/notification/NotificationRankerService;

    #@43
    invoke-virtual {v11, v4, v8, v9, v10}, Landroid/service/notification/NotificationRankerService;->onNotificationVisibilityChanged(Ljava/lang/String;JZ)V

    #@46
    goto :goto_0

    #@47
    .line 310
    .end local v10    # "visible":Z
    :cond_2
    const/4 v10, 0x0

    #@48
    .restart local v10    # "visible":Z
    goto :goto_2

    #@49
    .line 316
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "key":Ljava/lang/String;
    .end local v8    # "time":J
    .end local v10    # "visible":Z
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4b
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    #@4d
    .line 317
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@4f
    check-cast v4, Ljava/lang/String;

    #@51
    .line 318
    .restart local v4    # "key":Ljava/lang/String;
    iget-object v11, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@53
    check-cast v11, Ljava/lang/Long;

    #@55
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    #@58
    move-result-wide v8

    #@59
    .line 319
    .restart local v8    # "time":J
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@5c
    .line 320
    iget-object v11, p0, Landroid/service/notification/NotificationRankerService$MyHandler;->this$0:Landroid/service/notification/NotificationRankerService;

    #@5e
    invoke-virtual {v11, v4, v8, v9}, Landroid/service/notification/NotificationRankerService;->onNotificationClick(Ljava/lang/String;J)V

    #@61
    goto :goto_0

    #@62
    .line 324
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "key":Ljava/lang/String;
    .end local v8    # "time":J
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@64
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    #@66
    .line 325
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@68
    check-cast v4, Ljava/lang/String;

    #@6a
    .line 326
    .restart local v4    # "key":Ljava/lang/String;
    iget-object v11, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@6c
    check-cast v11, Ljava/lang/Long;

    #@6e
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    #@71
    move-result-wide v8

    #@72
    .line 327
    .restart local v8    # "time":J
    iget v0, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@74
    .line 328
    .local v0, "actionIndex":I
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@77
    .line 329
    iget-object v11, p0, Landroid/service/notification/NotificationRankerService$MyHandler;->this$0:Landroid/service/notification/NotificationRankerService;

    #@79
    invoke-virtual {v11, v4, v8, v9, v0}, Landroid/service/notification/NotificationRankerService;->onNotificationActionClick(Ljava/lang/String;JI)V

    #@7c
    goto :goto_0

    #@7d
    .line 333
    .end local v0    # "actionIndex":I
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "key":Ljava/lang/String;
    .end local v8    # "time":J
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7f
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    #@81
    .line 334
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@83
    check-cast v4, Ljava/lang/String;

    #@85
    .line 335
    .restart local v4    # "key":Ljava/lang/String;
    iget-object v11, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@87
    check-cast v11, Ljava/lang/Long;

    #@89
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    #@8c
    move-result-wide v8

    #@8d
    .line 336
    .restart local v8    # "time":J
    iget v5, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@8f
    .line 337
    .local v5, "reason":I
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@92
    .line 338
    iget-object v11, p0, Landroid/service/notification/NotificationRankerService$MyHandler;->this$0:Landroid/service/notification/NotificationRankerService;

    #@94
    invoke-virtual {v11, v4, v8, v9, v5}, Landroid/service/notification/NotificationRankerService;->onNotificationRemoved(Ljava/lang/String;JI)V

    #@97
    goto/16 :goto_0

    #@99
    .line 293
    nop

    #@9a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
