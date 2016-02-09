.class Landroid/os/TokenWatcher$1;
.super Ljava/lang/Object;
.source "TokenWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TokenWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/TokenWatcher;


# direct methods
.method constructor <init>(Landroid/os/TokenWatcher;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/TokenWatcher;

    #@0
    .prologue
    .line 147
    iput-object p1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 151
    iget-object v1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    #@2
    invoke-static {v1}, Landroid/os/TokenWatcher;->-get2(Landroid/os/TokenWatcher;)Ljava/util/WeakHashMap;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 152
    :try_start_0
    iget-object v1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    #@9
    invoke-static {v1}, Landroid/os/TokenWatcher;->-get0(Landroid/os/TokenWatcher;)I

    #@c
    move-result v0

    #@d
    .line 153
    .local v0, "value":I
    iget-object v1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    #@f
    const/4 v3, -0x1

    #@10
    invoke-static {v1, v3}, Landroid/os/TokenWatcher;->-set0(Landroid/os/TokenWatcher;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 155
    const/4 v1, 0x1

    #@15
    if-ne v0, v1, :cond_1

    #@17
    .line 156
    iget-object v1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    #@19
    invoke-virtual {v1}, Landroid/os/TokenWatcher;->acquired()V

    #@1c
    .line 148
    :cond_0
    :goto_0
    return-void

    #@1d
    .line 151
    .end local v0    # "value":I
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1

    #@20
    .line 158
    .restart local v0    # "value":I
    :cond_1
    if-nez v0, :cond_0

    #@22
    .line 159
    iget-object v1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    #@24
    invoke-virtual {v1}, Landroid/os/TokenWatcher;->released()V

    #@27
    goto :goto_0
.end method
