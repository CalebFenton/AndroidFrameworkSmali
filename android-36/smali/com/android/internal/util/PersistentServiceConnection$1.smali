.class Lcom/android/internal/util/PersistentServiceConnection$1;
.super Ljava/lang/Object;
.source "PersistentServiceConnection.java"

# interfaces
.implements Lcom/android/internal/util/ObservableServiceConnection$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/PersistentServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/ObservableServiceConnection$Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private blacklist mConnectedTime:J

.field final synthetic blacklist this$0:Lcom/android/internal/util/PersistentServiceConnection;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/PersistentServiceConnection;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/util/PersistentServiceConnection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/android/internal/util/PersistentServiceConnection$1;, "Lcom/android/internal/util/PersistentServiceConnection$1;"
    iput-object p1, p0, Lcom/android/internal/util/PersistentServiceConnection$1;->this$0:Lcom/android/internal/util/PersistentServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onConnected(Lcom/android/internal/util/ObservableServiceConnection;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ObservableServiceConnection<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/android/internal/util/PersistentServiceConnection$1;, "Lcom/android/internal/util/PersistentServiceConnection$1;"
    .local p1, "connection":Lcom/android/internal/util/ObservableServiceConnection;, "Lcom/android/internal/util/ObservableServiceConnection<TT;>;"
    .local p2, "service":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/internal/util/PersistentServiceConnection$1;->this$0:Lcom/android/internal/util/PersistentServiceConnection;

    invoke-static {v0}, Lcom/android/internal/util/PersistentServiceConnection;->-$$Nest$fgetmInjector(Lcom/android/internal/util/PersistentServiceConnection;)Lcom/android/internal/util/PersistentServiceConnection$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/PersistentServiceConnection$Injector;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/PersistentServiceConnection$1;->mConnectedTime:J

    .line 52
    return-void
.end method

.method public blacklist onDisconnected(Lcom/android/internal/util/ObservableServiceConnection;I)V
    .registers 8
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ObservableServiceConnection<",
            "TT;>;I)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/android/internal/util/PersistentServiceConnection$1;, "Lcom/android/internal/util/PersistentServiceConnection$1;"
    .local p1, "connection":Lcom/android/internal/util/ObservableServiceConnection;, "Lcom/android/internal/util/ObservableServiceConnection<TT;>;"
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    return-void

    .line 58
    :cond_4
    iget-object v0, p0, Lcom/android/internal/util/PersistentServiceConnection$1;->this$0:Lcom/android/internal/util/PersistentServiceConnection;

    invoke-static {v0}, Lcom/android/internal/util/PersistentServiceConnection;->-$$Nest$fgetmLock(Lcom/android/internal/util/PersistentServiceConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 59
    :try_start_b
    iget-object v1, p0, Lcom/android/internal/util/PersistentServiceConnection$1;->this$0:Lcom/android/internal/util/PersistentServiceConnection;

    invoke-static {v1}, Lcom/android/internal/util/PersistentServiceConnection;->-$$Nest$fgetmInjector(Lcom/android/internal/util/PersistentServiceConnection;)Lcom/android/internal/util/PersistentServiceConnection$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/PersistentServiceConnection$Injector;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/util/PersistentServiceConnection$1;->mConnectedTime:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/android/internal/util/PersistentServiceConnection$1;->this$0:Lcom/android/internal/util/PersistentServiceConnection;

    invoke-static {v3}, Lcom/android/internal/util/PersistentServiceConnection;->-$$Nest$fgetmMinConnectionDurationMs(Lcom/android/internal/util/PersistentServiceConnection;)I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_2f

    .line 60
    iget-object v1, p0, Lcom/android/internal/util/PersistentServiceConnection$1;->this$0:Lcom/android/internal/util/PersistentServiceConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/util/PersistentServiceConnection;->-$$Nest$fputmReconnectAttempts(Lcom/android/internal/util/PersistentServiceConnection;I)V

    .line 61
    iget-object v1, p0, Lcom/android/internal/util/PersistentServiceConnection$1;->this$0:Lcom/android/internal/util/PersistentServiceConnection;

    invoke-static {v1}, Lcom/android/internal/util/PersistentServiceConnection;->-$$Nest$mbindInternalLocked(Lcom/android/internal/util/PersistentServiceConnection;)Z

    goto :goto_34

    .line 63
    :cond_2f
    iget-object v1, p0, Lcom/android/internal/util/PersistentServiceConnection$1;->this$0:Lcom/android/internal/util/PersistentServiceConnection;

    invoke-static {v1}, Lcom/android/internal/util/PersistentServiceConnection;->-$$Nest$mscheduleConnectionAttemptLocked(Lcom/android/internal/util/PersistentServiceConnection;)V

    .line 65
    :goto_34
    monitor-exit v0

    .line 66
    return-void

    .line 65
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_b .. :try_end_38} :catchall_36

    throw v1
.end method
