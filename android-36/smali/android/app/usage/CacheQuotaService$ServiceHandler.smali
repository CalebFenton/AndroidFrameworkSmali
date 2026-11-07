.class final Landroid/app/usage/CacheQuotaService$ServiceHandler;
.super Landroid/os/Handler;
.source "CacheQuotaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/CacheQuotaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final greylist-max-o MSG_SEND_LIST:I = 0x1


# instance fields
.field final synthetic blacklist this$0:Landroid/app/usage/CacheQuotaService;


# direct methods
.method public constructor blacklist <init>(Landroid/app/usage/CacheQuotaService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 89
    iput-object p1, p0, Landroid/app/usage/CacheQuotaService$ServiceHandler;->this$0:Landroid/app/usage/CacheQuotaService;

    .line 90
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 91
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    .line 96
    .local v0, "action":I
    packed-switch v0, :pswitch_data_40

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CacheQuotaService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 98
    :pswitch_1e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 100
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/RemoteCallback;Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;>;"
    iget-object v2, p0, Landroid/app/usage/CacheQuotaService$ServiceHandler;->this$0:Landroid/app/usage/CacheQuotaService;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/app/usage/CacheQuotaService;->onComputeCacheQuotaHints(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 101
    .local v2, "processed":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v3, "data":Landroid/os/Bundle;
    const-string/jumbo v4, "requests"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 104
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/os/RemoteCallback;

    .line 105
    .local v4, "callback":Landroid/os/RemoteCallback;
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 106
    nop

    .line 110
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/RemoteCallback;Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;>;"
    .end local v2    # "processed":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v4    # "callback":Landroid/os/RemoteCallback;
    :goto_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
