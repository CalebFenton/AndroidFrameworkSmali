.class Lcom/android/server/net/NetworkStatsService$HandlerCallback;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HandlerCallback"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/net/NetworkStatsService;

    #@0
    .prologue
    .line 1331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1332
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    #@5
    .line 1331
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
    .line 1337
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 1352
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 1339
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@a
    .line 1340
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    #@c
    invoke-static {v1, v0}, Lcom/android/server/net/NetworkStatsService;->-wrap3(Lcom/android/server/net/NetworkStatsService;I)V

    #@f
    .line 1341
    return v2

    #@10
    .line 1344
    .end local v0    # "flags":I
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    #@12
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->-wrap8(Lcom/android/server/net/NetworkStatsService;)V

    #@15
    .line 1345
    return v2

    #@16
    .line 1348
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    #@18
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->-wrap4(Lcom/android/server/net/NetworkStatsService;)V

    #@1b
    .line 1349
    return v2

    #@1c
    .line 1337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
