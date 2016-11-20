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
.field tag:Ljava/lang/String;

.field final synthetic this$0:Landroid/os/TokenWatcher;

.field token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/TokenWatcher;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/TokenWatcher;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 185
    iput-object p1, p0, Landroid/os/TokenWatcher$Death;->this$0:Landroid/os/TokenWatcher;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 187
    iput-object p2, p0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    #@7
    .line 188
    iput-object p3, p0, Landroid/os/TokenWatcher$Death;->tag:Ljava/lang/String;

    #@9
    .line 185
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Landroid/os/TokenWatcher$Death;->this$0:Landroid/os/TokenWatcher;

    #@2
    iget-object v1, p0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {v0, v1, v2}, Landroid/os/TokenWatcher;->cleanup(Landroid/os/IBinder;Z)V

    #@8
    .line 191
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    :try_start_0
    iget-object v0, p0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 200
    iget-object v0, p0, Landroid/os/TokenWatcher$Death;->this$0:Landroid/os/TokenWatcher;

    #@6
    invoke-static {v0}, Landroid/os/TokenWatcher;->-get1(Landroid/os/TokenWatcher;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "cleaning up leaked reference: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Landroid/os/TokenWatcher$Death;->tag:Ljava/lang/String;

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 201
    iget-object v0, p0, Landroid/os/TokenWatcher$Death;->this$0:Landroid/os/TokenWatcher;

    #@25
    iget-object v1, p0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    #@27
    invoke-virtual {v0, v1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 205
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@2d
    .line 196
    return-void

    #@2e
    .line 204
    :catchall_0
    move-exception v0

    #@2f
    .line 205
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@32
    .line 204
    throw v0
.end method
