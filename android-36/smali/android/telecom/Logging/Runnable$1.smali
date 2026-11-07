.class Landroid/telecom/Logging/Runnable$1;
.super Ljava/lang/Object;
.source "Runnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/Logging/Runnable;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/Logging/Runnable;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telecom/Logging/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 31
    iput-object p1, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 34
    iget-object v0, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-static {v0}, Landroid/telecom/Logging/Runnable;->-$$Nest$fgetmLock(Landroid/telecom/Logging/Runnable;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 36
    const/4 v1, 0x0

    :try_start_8
    iget-object v2, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-static {v2}, Landroid/telecom/Logging/Runnable;->-$$Nest$fgetmSubsession(Landroid/telecom/Logging/Runnable;)Landroid/telecom/Logging/Session;

    move-result-object v2

    iget-object v3, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-static {v3}, Landroid/telecom/Logging/Runnable;->-$$Nest$fgetmSubsessionName(Landroid/telecom/Logging/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-virtual {v2}, Landroid/telecom/Logging/Runnable;->loggedRun()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_2e

    .line 39
    :try_start_1c
    iget-object v2, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-static {v2}, Landroid/telecom/Logging/Runnable;->-$$Nest$fgetmSubsession(Landroid/telecom/Logging/Runnable;)Landroid/telecom/Logging/Session;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 40
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 41
    iget-object v2, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-static {v2, v1}, Landroid/telecom/Logging/Runnable;->-$$Nest$fputmSubsession(Landroid/telecom/Logging/Runnable;Landroid/telecom/Logging/Session;)V

    .line 44
    :cond_2c
    monitor-exit v0

    .line 45
    return-void

    .line 39
    :catchall_2e
    move-exception v2

    iget-object v3, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-static {v3}, Landroid/telecom/Logging/Runnable;->-$$Nest$fgetmSubsession(Landroid/telecom/Logging/Runnable;)Landroid/telecom/Logging/Session;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 40
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 41
    iget-object v3, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-static {v3, v1}, Landroid/telecom/Logging/Runnable;->-$$Nest$fputmSubsession(Landroid/telecom/Logging/Runnable;Landroid/telecom/Logging/Session;)V

    .line 43
    :cond_3f
    nop

    .end local p0    # "this":Landroid/telecom/Logging/Runnable$1;
    throw v2

    .line 44
    .restart local p0    # "this":Landroid/telecom/Logging/Runnable$1;
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_1c .. :try_end_43} :catchall_41

    throw v1
.end method
