.class Landroid/database/sqlite/SQLiteConnectionPool$1;
.super Ljava/lang/Object;
.source "SQLiteConnectionPool.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/database/sqlite/SQLiteConnectionPool;->waitForConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/database/sqlite/SQLiteConnectionPool;

.field final synthetic blacklist val$nonce:I

.field final synthetic blacklist val$waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;


# direct methods
.method constructor blacklist <init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;I)V
    .registers 4
    .param p1, "this$0"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 769
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    iput-object p2, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->val$waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput p3, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->val$nonce:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCancel()V
    .registers 4

    .line 772
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->-$$Nest$fgetmLock(Landroid/database/sqlite/SQLiteConnectionPool;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 773
    :try_start_7
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->val$waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iget v1, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    iget v2, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->val$nonce:I

    if-ne v1, v2, :cond_16

    .line 774
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->val$waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->-$$Nest$mcancelConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V

    .line 776
    :cond_16
    monitor-exit v0

    .line 777
    return-void

    .line 776
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method
