.class Lsun/nio/fs/PollingWatchService$PollingWatchKey$1;
.super Ljava/lang/Object;
.source "PollingWatchService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/PollingWatchService$PollingWatchKey;->enable(Ljava/util/Set;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lsun/nio/fs/PollingWatchService$PollingWatchKey;


# direct methods
.method constructor blacklist <init>(Lsun/nio/fs/PollingWatchService$PollingWatchKey;)V
    .registers 2
    .param p1, "this$1"    # Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey$1;->this$1:Lsun/nio/fs/PollingWatchService$PollingWatchKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 288
    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey$1;->this$1:Lsun/nio/fs/PollingWatchService$PollingWatchKey;

    invoke-virtual {v0}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->poll()V

    return-void
.end method
