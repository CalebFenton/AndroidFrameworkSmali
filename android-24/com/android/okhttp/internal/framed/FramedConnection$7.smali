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
.field final synthetic this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

.field final synthetic val$errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # [Ljava/lang/Object;
    .param p4, "val$streamId"    # I
    .param p5, "val$errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;

    #@0
    .prologue
    .line 872
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@2
    iput p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->val$streamId:I

    #@4
    iput-object p5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->val$errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    #@6
    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@9
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    #@0
    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@2
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get6(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/PushObserver;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->val$streamId:I

    #@8
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->val$errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    #@a
    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/internal/framed/PushObserver;->onReset(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    #@d
    .line 875
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@f
    monitor-enter v1

    #@10
    .line 876
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@12
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get0(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;

    #@15
    move-result-object v0

    #@16
    iget v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->val$streamId:I

    #@18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v2

    #@1c
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v1

    #@20
    .line 873
    return-void

    #@21
    .line 875
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method
