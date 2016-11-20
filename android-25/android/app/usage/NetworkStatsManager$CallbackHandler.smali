.class Landroid/app/usage/NetworkStatsManager$CallbackHandler;
.super Landroid/os/Handler;
.source "NetworkStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/NetworkStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackHandler"
.end annotation


# instance fields
.field private mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

.field private final mNetworkType:I

.field private final mSubscriberId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Looper;ILjava/lang/String;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "networkType"    # I
    .param p3, "subscriberId"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/app/usage/NetworkStatsManager$UsageCallback;

    #@0
    .prologue
    .line 425
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3
    .line 426
    iput p2, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mNetworkType:I

    #@5
    .line 427
    iput-object p3, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mSubscriberId:Ljava/lang/String;

    #@7
    .line 428
    iput-object p4, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    #@9
    .line 424
    return-void
.end method

.method private static getObject(Landroid/os/Message;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 454
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 434
    const-string/jumbo v1, "DataUsageRequest"

    #@4
    invoke-static {p1, v1}, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/net/DataUsageRequest;

    #@a
    .line 436
    .local v0, "request":Landroid/net/DataUsageRequest;
    iget v1, p1, Landroid/os/Message;->what:I

    #@c
    packed-switch v1, :pswitch_data_0

    #@f
    .line 432
    :goto_0
    return-void

    #@10
    .line 438
    :pswitch_0
    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 439
    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    #@16
    iget v2, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mNetworkType:I

    #@18
    iget-object v3, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mSubscriberId:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2, v3}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->onThresholdReached(ILjava/lang/String;)V

    #@1d
    goto :goto_0

    #@1e
    .line 441
    :cond_0
    const-string/jumbo v1, "NetworkStatsManager"

    #@21
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "limit reached with released callback for "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    goto :goto_0

    #@39
    .line 447
    :pswitch_1
    iput-object v2, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    #@3b
    goto :goto_0

    #@3c
    .line 436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
