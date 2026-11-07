.class public Lcom/android/internal/telephony/util/RemoteCallbackListExt;
.super Landroid/os/RemoteCallbackList;
.source "RemoteCallbackListExt.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/IInterface;",
        ">",
        "Landroid/os/RemoteCallbackList<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    .local p0, "this":Lcom/android/internal/telephony/util/RemoteCallbackListExt;, "Lcom/android/internal/telephony/util/RemoteCallbackListExt<TE;>;"
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist broadcastAction(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TE;>;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/android/internal/telephony/util/RemoteCallbackListExt;, "Lcom/android/internal/telephony/util/RemoteCallbackListExt<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TE;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->beginBroadcast()I

    move-result v0

    .line 39
    .local v0, "itemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 40
    :try_start_7
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_11

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 43
    .end local v1    # "i":I
    :catchall_11
    move-exception v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->finishBroadcast()V

    .line 44
    throw v1

    .line 43
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->finishBroadcast()V

    .line 44
    nop

    .line 45
    return-void
.end method
