.class Lcom/android/server/net/NetworkStatsService$7;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkStatsService;

    #@0
    .prologue
    .line 1278
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1281
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 1296
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 1283
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@a
    .line 1284
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@c
    invoke-static {v1, v0}, Lcom/android/server/net/NetworkStatsService;->-wrap4(Lcom/android/server/net/NetworkStatsService;I)V

    #@f
    .line 1285
    return v2

    #@10
    .line 1288
    .end local v0    # "flags":I
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@12
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->-wrap9(Lcom/android/server/net/NetworkStatsService;)V

    #@15
    .line 1289
    return v2

    #@16
    .line 1292
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@18
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->-wrap5(Lcom/android/server/net/NetworkStatsService;)V

    #@1b
    .line 1293
    return v2

    #@1c
    .line 1281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
