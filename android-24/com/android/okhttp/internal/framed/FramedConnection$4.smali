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
.field final synthetic this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

.field final synthetic val$requestHeaders:Ljava/util/List;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # [Ljava/lang/Object;
    .param p4, "val$streamId"    # I

    #@0
    .prologue
    .line 811
    .local p5, "val$requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@2
    iput p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->val$streamId:I

    #@4
    iput-object p5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->val$requestHeaders:Ljava/util/List;

    #@6
    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@9
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    #@0
    .prologue
    .line 813
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@2
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get6(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/PushObserver;

    #@5
    move-result-object v2

    #@6
    iget v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->val$streamId:I

    #@8
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->val$requestHeaders:Ljava/util/List;

    #@a
    invoke-interface {v2, v3, v4}, Lcom/android/okhttp/internal/framed/PushObserver;->onRequest(ILjava/util/List;)Z

    #@d
    move-result v0

    #@e
    .line 815
    .local v0, "cancel":Z
    if-eqz v0, :cond_0

    #@10
    .line 816
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@12
    iget-object v2, v2, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    #@14
    iget v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->val$streamId:I

    #@16
    sget-object v4, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

    #@18
    invoke-interface {v2, v3, v4}, Lcom/android/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    #@1b
    .line 817
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@1d
    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 818
    :try_start_1
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@20
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get0(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;

    #@23
    move-result-object v2

    #@24
    iget v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->val$streamId:I

    #@26
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v4

    #@2a
    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    :try_start_2
    monitor-exit v3

    #@2e
    .line 812
    :cond_0
    :goto_0
    return-void

    #@2f
    .line 817
    :catchall_0
    move-exception v2

    #@30
    monitor-exit v3

    #@31
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@32
    .line 821
    :catch_0
    move-exception v1

    #@33
    .local v1, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method
