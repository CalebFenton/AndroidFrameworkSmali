.class abstract Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractSource"
.end annotation


# instance fields
.field protected closed:Z

.field final synthetic this$0:Lcom/android/okhttp/internal/http/HttpConnection;

.field protected final timeout:Lcom/android/okhttp/okio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/internal/http/HttpConnection;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/HttpConnection;

    #@0
    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 358
    new-instance v0, Lcom/android/okhttp/okio/ForwardingTimeout;

    #@7
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@9
    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpConnection;->-get4(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/okio/BufferedSource;

    #@c
    move-result-object v1

    #@d
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@10
    move-result-object v1

    #@11
    invoke-direct {v0, v1}, Lcom/android/okhttp/okio/ForwardingTimeout;-><init>(Lcom/android/okhttp/okio/Timeout;)V

    #@14
    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    #@16
    .line 357
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/http/HttpConnection;Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/HttpConnection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;)V

    #@3
    return-void
.end method


# virtual methods
.method protected final endOfInput(Z)V
    .locals 3
    .param p1, "recyclable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 370
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@3
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->-get5(Lcom/android/okhttp/internal/http/HttpConnection;)I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x5

    #@8
    if-eq v0, v1, :cond_0

    #@a
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "state: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@1a
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpConnection;->-get5(Lcom/android/okhttp/internal/http/HttpConnection;)I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@2c
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    #@2e
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/HttpConnection;->-wrap0(Lcom/android/okhttp/internal/http/HttpConnection;Lcom/android/okhttp/okio/ForwardingTimeout;)V

    #@31
    .line 374
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@33
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/http/HttpConnection;->-set1(Lcom/android/okhttp/internal/http/HttpConnection;I)I

    #@36
    .line 375
    if-eqz p1, :cond_2

    #@38
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@3a
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->-get1(Lcom/android/okhttp/internal/http/HttpConnection;)I

    #@3d
    move-result v0

    #@3e
    const/4 v1, 0x1

    #@3f
    if-ne v0, v1, :cond_2

    #@41
    .line 376
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@43
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/http/HttpConnection;->-set0(Lcom/android/okhttp/internal/http/HttpConnection;I)I

    #@46
    .line 377
    sget-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@48
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@4a
    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpConnection;->-get2(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/ConnectionPool;

    #@4d
    move-result-object v1

    #@4e
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@50
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpConnection;->-get0(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/Connection;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/internal/Internal;->recycle(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Connection;)V

    #@57
    .line 369
    :cond_1
    :goto_0
    return-void

    #@58
    .line 378
    :cond_2
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@5a
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->-get1(Lcom/android/okhttp/internal/http/HttpConnection;)I

    #@5d
    move-result v0

    #@5e
    const/4 v1, 0x2

    #@5f
    if-ne v0, v1, :cond_1

    #@61
    .line 379
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@63
    const/4 v1, 0x6

    #@64
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/HttpConnection;->-set1(Lcom/android/okhttp/internal/http/HttpConnection;I)I

    #@67
    .line 380
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@69
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->-get0(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/Connection;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v0}, Lcom/android/okhttp/Connection;->getSocket()Ljava/net/Socket;

    #@70
    move-result-object v0

    #@71
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@74
    goto :goto_0
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    #@2
    return-object v0
.end method

.method protected final unexpectedEndOfInput()V
    .locals 2

    #@0
    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@2
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->-get0(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/Connection;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/okhttp/Connection;->getSocket()Ljava/net/Socket;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    #@d
    .line 398
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@f
    const/4 v1, 0x6

    #@10
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/HttpConnection;->-set1(Lcom/android/okhttp/internal/http/HttpConnection;I)I

    #@13
    .line 396
    return-void
.end method
