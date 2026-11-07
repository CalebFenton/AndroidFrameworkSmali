.class Landroid/os/TokenWatcher$Death;
.super Ljava/lang/Object;
.source "TokenWatcher.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TokenWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Death"
.end annotation


# instance fields
.field greylist-max-o tag:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/os/TokenWatcher;

.field greylist-max-o token:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/TokenWatcher;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 200
    iput-object p1, p0, Landroid/os/TokenWatcher$Death;->this$0:Landroid/os/TokenWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p2, p0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    .line 202
    iput-object p3, p0, Landroid/os/TokenWatcher$Death;->tag:Ljava/lang/String;

    .line 203
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 4

    .line 207
    iget-object v0, p0, Landroid/os/TokenWatcher$Death;->this$0:Landroid/os/TokenWatcher;

    iget-object v1, p0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/TokenWatcher;->cleanup(Landroid/os/IBinder;Z)V

    .line 208
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 213
    :try_start_0
    iget-object v0, p0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    if-eqz v0, :cond_29

    .line 214
    iget-object v0, p0, Landroid/os/TokenWatcher$Death;->this$0:Landroid/os/TokenWatcher;

    invoke-static {v0}, Landroid/os/TokenWatcher;->-$$Nest$fgetmTag(Landroid/os/TokenWatcher;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleaning up leaked reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/TokenWatcher$Death;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Landroid/os/TokenWatcher$Death;->this$0:Landroid/os/TokenWatcher;

    iget-object v1, p0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2e

    .line 219
    :cond_29
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 220
    nop

    .line 221
    return-void

    .line 219
    :catchall_2e
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 220
    throw v0
.end method
