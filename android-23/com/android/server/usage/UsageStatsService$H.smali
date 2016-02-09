.class Lcom/android/server/usage/UsageStatsService$H;
.super Landroid/os/Handler;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1025
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    .line 1026
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1025
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 1031
    iget v1, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 1079
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@a
    .line 1030
    :goto_0
    return-void

    #@b
    .line 1033
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f
    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    #@11
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@13
    invoke-virtual {v2, v1, v3}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    #@16
    goto :goto_0

    #@17
    .line 1037
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@19
    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService;->flushToDisk()V

    #@1c
    goto :goto_0

    #@1d
    .line 1041
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@1f
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@21
    invoke-virtual {v1, v2}, Lcom/android/server/usage/UsageStatsService;->removeUser(I)V

    #@24
    goto :goto_0

    #@25
    .line 1045
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@27
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@29
    check-cast v1, Ljava/lang/String;

    #@2b
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@2d
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@2f
    if-ne v6, v2, :cond_0

    #@31
    :goto_1
    invoke-virtual {v4, v1, v5, v2}, Lcom/android/server/usage/UsageStatsService;->informListeners(Ljava/lang/String;IZ)V

    #@34
    goto :goto_0

    #@35
    :cond_0
    move v2, v3

    #@36
    goto :goto_1

    #@37
    .line 1049
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@39
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3b
    check-cast v1, Ljava/lang/String;

    #@3d
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@3f
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@41
    if-ne v6, v2, :cond_1

    #@43
    :goto_2
    invoke-virtual {v4, v1, v5, v2}, Lcom/android/server/usage/UsageStatsService;->forceIdleState(Ljava/lang/String;IZ)V

    #@46
    goto :goto_0

    #@47
    :cond_1
    move v2, v3

    #@48
    goto :goto_2

    #@49
    .line 1053
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@4b
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@4d
    invoke-virtual {v1, v2}, Lcom/android/server/usage/UsageStatsService;->checkIdleStates(I)V

    #@50
    goto :goto_0

    #@51
    .line 1057
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@53
    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService;->checkParoleTimeout()V

    #@56
    goto :goto_0

    #@57
    .line 1062
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@59
    invoke-virtual {v1, v3}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V

    #@5c
    goto :goto_0

    #@5d
    .line 1066
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5f
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@61
    .line 1067
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@63
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@65
    check-cast v1, Ljava/lang/String;

    #@67
    .line 1068
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@69
    check-cast v2, Ljava/lang/String;

    #@6b
    .line 1069
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@6d
    check-cast v3, Ljava/lang/Integer;

    #@6f
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@72
    move-result v3

    #@73
    .line 1067
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/usage/UsageStatsService;->reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    #@76
    .line 1070
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@79
    goto :goto_0

    #@7a
    .line 1075
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@7c
    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService;->informParoleStateChanged()V

    #@7f
    goto :goto_0

    #@80
    .line 1031
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
