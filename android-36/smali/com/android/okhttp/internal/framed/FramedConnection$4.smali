.class Lcom/android/okhttp/internal/framed/FramedConnection$4;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/FramedConnection;->pushRequestLater(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

.field final synthetic blacklist val$requestHeaders:Ljava/util/List;

.field final synthetic blacklist val$streamId:I


# direct methods
.method varargs constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
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

    .line 848
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->val$streamId:I

    iput-object p5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->val$requestHeaders:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist execute()V
    .registers 4

    .line 850
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2700(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->val$streamId:I

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->val$requestHeaders:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/internal/framed/PushObserver;->onRequest(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 853
    :try_start_10
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object v0, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->val$streamId:I

    sget-object v2, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 854
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    monitor-enter v0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1e} :catch_32

    .line 855
    :try_start_1e
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2800(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v1

    iget p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->val$streamId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 856
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_2f

    :try_start_31
    throw p0
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_32} :catch_32

    :catch_32
    :cond_32
    return-void
.end method
