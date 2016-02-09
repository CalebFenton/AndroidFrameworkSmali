.class final Landroid/view/ViewRootImpl$RunQueue;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RunQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    }
.end annotation


# instance fields
.field private final mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewRootImpl$RunQueue$HandlerAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 6864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 6865
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    #@a
    .line 6864
    return-void
.end method


# virtual methods
.method executeActions(Landroid/os/Handler;)V
    .locals 8
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 6895
    iget-object v5, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    #@2
    monitor-enter v5

    #@3
    .line 6896
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    #@5
    .line 6897
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl$RunQueue$HandlerAction;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    .line 6899
    .local v1, "count":I
    const/4 v3, 0x0

    #@a
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    #@c
    .line 6900
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;

    #@12
    .line 6901
    .local v2, "handlerAction":Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    iget-object v4, v2, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    #@14
    iget-wide v6, v2, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->delay:J

    #@16
    invoke-virtual {p1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@19
    .line 6899
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 6904
    .end local v2    # "handlerAction":Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v5

    #@20
    .line 6894
    return-void

    #@21
    .line 6895
    .end local v0    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl$RunQueue$HandlerAction;>;"
    .end local v1    # "count":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    #@22
    monitor-exit v5

    #@23
    throw v4
.end method

.method post(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 6868
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    #@5
    .line 6867
    return-void
.end method

.method postDelayed(Ljava/lang/Runnable;J)V
    .locals 4
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    #@0
    .prologue
    .line 6872
    new-instance v0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;-><init>(Landroid/view/ViewRootImpl$RunQueue$HandlerAction;)V

    #@6
    .line 6873
    .local v0, "handlerAction":Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    iput-object p1, v0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    #@8
    .line 6874
    iput-wide p2, v0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->delay:J

    #@a
    .line 6876
    iget-object v2, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    #@c
    monitor-enter v2

    #@d
    .line 6877
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 6871
    return-void

    #@14
    .line 6876
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method removeCallbacks(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 6882
    new-instance v1, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-direct {v1, v2}, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;-><init>(Landroid/view/ViewRootImpl$RunQueue$HandlerAction;)V

    #@6
    .line 6883
    .local v1, "handlerAction":Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    iput-object p1, v1, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    #@8
    .line 6885
    iget-object v3, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    #@a
    monitor-enter v3

    #@b
    .line 6886
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    #@d
    .line 6888
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl$RunQueue$HandlerAction;>;"
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_0

    #@13
    monitor-exit v3

    #@14
    .line 6881
    return-void

    #@15
    .line 6885
    .end local v0    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl$RunQueue$HandlerAction;>;"
    :catchall_0
    move-exception v2

    #@16
    monitor-exit v3

    #@17
    throw v2
.end method
