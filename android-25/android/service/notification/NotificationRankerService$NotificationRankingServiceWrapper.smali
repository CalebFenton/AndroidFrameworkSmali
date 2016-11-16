.class Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;
.super Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;
.source "NotificationRankerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationRankerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationRankingServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/notification/NotificationRankerService;


# direct methods
.method private constructor <init>(Landroid/service/notification/NotificationRankerService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/notification/NotificationRankerService;

    #@0
    .prologue
    .line 220
    iput-object p1, p0, Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;->this$0:Landroid/service/notification/NotificationRankerService;

    #@2
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;)V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/NotificationRankerService;Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/notification/NotificationRankerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;-><init>(Landroid/service/notification/NotificationRankerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onNotificationActionClick(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "actionIndex"    # I

    #@0
    .prologue
    .line 261
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 262
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 263
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@c
    .line 264
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@e
    .line 265
    iget-object v1, p0, Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;->this$0:Landroid/service/notification/NotificationRankerService;

    #@10
    invoke-static {v1}, Landroid/service/notification/NotificationRankerService;->-get0(Landroid/service/notification/NotificationRankerService;)Landroid/os/Handler;

    #@13
    move-result-object v1

    #@14
    const/4 v2, 0x4

    #@15
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@1c
    .line 260
    return-void
.end method

.method public onNotificationClick(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J

    #@0
    .prologue
    .line 252
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 253
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 254
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@c
    .line 255
    iget-object v1, p0, Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;->this$0:Landroid/service/notification/NotificationRankerService;

    #@e
    invoke-static {v1}, Landroid/service/notification/NotificationRankerService;->-get0(Landroid/service/notification/NotificationRankerService;)Landroid/os/Handler;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x3

    #@13
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@1a
    .line 251
    return-void
.end method

.method public onNotificationEnqueued(Landroid/service/notification/IStatusBarNotificationHolder;IZ)V
    .locals 5
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "importance"    # I
    .param p3, "user"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 226
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v2

    #@5
    .line 232
    .local v2, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@8
    move-result-object v0

    #@9
    .line 233
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@b
    .line 234
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@d
    .line 235
    if-eqz p3, :cond_0

    #@f
    move v3, v4

    #@10
    :goto_0
    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@12
    .line 236
    iget-object v3, p0, Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;->this$0:Landroid/service/notification/NotificationRankerService;

    #@14
    invoke-static {v3}, Landroid/service/notification/NotificationRankerService;->-get0(Landroid/service/notification/NotificationRankerService;)Landroid/os/Handler;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@1f
    .line 223
    return-void

    #@20
    .line 227
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v1

    #@21
    .line 228
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NotificationRankers"

    #@24
    const-string/jumbo v4, "onNotificationEnqueued: Error receiving StatusBarNotification"

    #@27
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    .line 229
    return-void

    #@2b
    .line 235
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_0
    const/4 v3, 0x0

    #@2c
    goto :goto_0
.end method

.method public onNotificationRemovedReason(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "reason"    # I

    #@0
    .prologue
    .line 271
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 272
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 273
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@c
    .line 274
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@e
    .line 275
    iget-object v1, p0, Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;->this$0:Landroid/service/notification/NotificationRankerService;

    #@10
    invoke-static {v1}, Landroid/service/notification/NotificationRankerService;->-get0(Landroid/service/notification/NotificationRankerService;)Landroid/os/Handler;

    #@13
    move-result-object v1

    #@14
    const/4 v2, 0x5

    #@15
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@1c
    .line 270
    return-void
.end method

.method public onNotificationVisibilityChanged(Ljava/lang/String;JZ)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "visible"    # Z

    #@0
    .prologue
    .line 242
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 243
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 244
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@c
    .line 245
    if-eqz p4, :cond_0

    #@e
    const/4 v1, 0x1

    #@f
    :goto_0
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@11
    .line 246
    iget-object v1, p0, Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;->this$0:Landroid/service/notification/NotificationRankerService;

    #@13
    invoke-static {v1}, Landroid/service/notification/NotificationRankerService;->-get0(Landroid/service/notification/NotificationRankerService;)Landroid/os/Handler;

    #@16
    move-result-object v1

    #@17
    const/4 v2, 0x2

    #@18
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@1f
    .line 241
    return-void

    #@20
    .line 245
    :cond_0
    const/4 v1, 0x0

    #@21
    goto :goto_0
.end method
