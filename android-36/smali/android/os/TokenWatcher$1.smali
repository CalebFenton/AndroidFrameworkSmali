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
.field final synthetic blacklist this$0:Landroid/os/TokenWatcher;


# direct methods
.method constructor blacklist <init>(Landroid/os/TokenWatcher;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/TokenWatcher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 161
    iput-object p1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 165
    iget-object v0, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    invoke-static {v0}, Landroid/os/TokenWatcher;->-$$Nest$fgetmTokens(Landroid/os/TokenWatcher;)Ljava/util/WeakHashMap;

    move-result-object v0

    monitor-enter v0

    .line 166
    :try_start_7
    iget-object v1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    invoke-static {v1}, Landroid/os/TokenWatcher;->-$$Nest$fgetmNotificationQueue(Landroid/os/TokenWatcher;)I

    move-result v1

    .line 167
    .local v1, "value":I
    iget-object v2, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/os/TokenWatcher;->-$$Nest$fputmNotificationQueue(Landroid/os/TokenWatcher;I)V

    .line 168
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_25

    .line 169
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1d

    .line 170
    iget-object v0, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    invoke-virtual {v0}, Landroid/os/TokenWatcher;->acquired()V

    goto :goto_24

    .line 172
    :cond_1d
    if-nez v1, :cond_24

    .line 173
    iget-object v0, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    invoke-virtual {v0}, Landroid/os/TokenWatcher;->released()V

    .line 175
    :cond_24
    :goto_24
    return-void

    .line 168
    .end local v1    # "value":I
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method
