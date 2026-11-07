.class Lsun/nio/fs/PollingWatchService$3;
.super Ljava/lang/Object;
.source "PollingWatchService.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/PollingWatchService;->implClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/nio/fs/PollingWatchService;


# direct methods
.method constructor blacklist <init>(Lsun/nio/fs/PollingWatchService;)V
    .registers 2
    .param p1, "this$0"    # Lsun/nio/fs/PollingWatchService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lsun/nio/fs/PollingWatchService$3;->this$0:Lsun/nio/fs/PollingWatchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 188
    invoke-virtual {p0}, Lsun/nio/fs/PollingWatchService$3;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 2

    .line 191
    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$3;->this$0:Lsun/nio/fs/PollingWatchService;

    invoke-static {v0}, Lsun/nio/fs/PollingWatchService;->-$$Nest$fgetscheduledExecutor(Lsun/nio/fs/PollingWatchService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 192
    const/4 v0, 0x0

    return-object v0
.end method
