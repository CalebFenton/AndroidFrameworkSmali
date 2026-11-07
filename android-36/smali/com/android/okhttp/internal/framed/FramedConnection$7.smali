.class Lcom/android/okhttp/internal/framed/FramedConnection$7;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/FramedConnection;->pushResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

.field final synthetic blacklist val$errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

.field final synthetic blacklist val$streamId:I


# direct methods
.method varargs constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 909
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->val$streamId:I

    iput-object p5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->val$errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist execute()V
    .registers 4

    .line 911
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2700(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->val$streamId:I

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->val$errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/internal/framed/PushObserver;->onReset(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 912
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    monitor-enter v0

    .line 913
    :try_start_10
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2800(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v1

    iget p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->val$streamId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 914
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_21

    throw p0
.end method
