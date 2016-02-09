.class Lcom/android/okhttp/internal/spdy/SpdyConnection$3;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "SpdyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/spdy/SpdyConnection;->writePingLater(ZIILcom/android/okhttp/internal/spdy/Ping;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

.field final synthetic val$payload1:I

.field final synthetic val$payload2:I

.field final synthetic val$ping:Lcom/android/okhttp/internal/spdy/Ping;

.field final synthetic val$reply:Z


# direct methods
.method varargs constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/android/okhttp/internal/spdy/Ping;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # [Ljava/lang/Object;
    .param p4, "val$reply"    # Z
    .param p5, "val$payload1"    # I
    .param p6, "val$payload2"    # I
    .param p7, "val$ping"    # Lcom/android/okhttp/internal/spdy/Ping;

    #@0
    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@2
    iput-boolean p4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;->val$reply:Z

    #@4
    iput p5, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;->val$payload1:I

    #@6
    iput p6, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;->val$payload2:I

    #@8
    iput-object p7, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;->val$ping:Lcom/android/okhttp/internal/spdy/Ping;

    #@a
    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@d
    .line 391
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    #@0
    .prologue
    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@2
    iget-boolean v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;->val$reply:Z

    #@4
    iget v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;->val$payload1:I

    #@6
    iget v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;->val$payload2:I

    #@8
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;->val$ping:Lcom/android/okhttp/internal/spdy/Ping;

    #@a
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-wrap8(Lcom/android/okhttp/internal/spdy/SpdyConnection;ZIILcom/android/okhttp/internal/spdy/Ping;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 392
    :goto_0
    return-void

    #@e
    .line 395
    :catch_0
    move-exception v0

    #@f
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method
