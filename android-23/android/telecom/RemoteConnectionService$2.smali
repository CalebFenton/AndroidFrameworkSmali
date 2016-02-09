.class Landroid/telecom/RemoteConnectionService$2;
.super Ljava/lang/Object;
.source "RemoteConnectionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnectionService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/RemoteConnectionService;

    #@0
    .prologue
    .line 338
    iput-object p1, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    #@0
    .prologue
    .line 341
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    #@2
    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v3

    #@6
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v2

    #@e
    .local v2, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/telecom/RemoteConnection;

    #@1a
    .line 342
    .local v1, "c":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    #@1d
    goto :goto_0

    #@1e
    .line 344
    .end local v1    # "c":Landroid/telecom/RemoteConnection;
    :cond_0
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    #@20
    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->-get2(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    #@23
    move-result-object v3

    #@24
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@27
    move-result-object v3

    #@28
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v2

    #@2c
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_1

    #@32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Landroid/telecom/RemoteConference;

    #@38
    .line 345
    .local v0, "c":Landroid/telecom/RemoteConference;
    invoke-virtual {v0}, Landroid/telecom/RemoteConference;->setDestroyed()V

    #@3b
    goto :goto_1

    #@3c
    .line 347
    .end local v0    # "c":Landroid/telecom/RemoteConference;
    :cond_1
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    #@3e
    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    #@41
    move-result-object v3

    #@42
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    #@45
    .line 348
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    #@47
    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->-get2(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    #@4a
    move-result-object v3

    #@4b
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    #@4e
    .line 349
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    #@50
    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->-get7(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    #@53
    move-result-object v3

    #@54
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    #@57
    .line 350
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    #@59
    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->-get6(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    #@5c
    move-result-object v3

    #@5d
    invoke-interface {v3}, Lcom/android/internal/telecom/IConnectionService;->asBinder()Landroid/os/IBinder;

    #@60
    move-result-object v3

    #@61
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    #@63
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get4(Landroid/telecom/RemoteConnectionService;)Landroid/os/IBinder$DeathRecipient;

    #@66
    move-result-object v4

    #@67
    const/4 v5, 0x0

    #@68
    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@6b
    .line 340
    return-void
.end method
