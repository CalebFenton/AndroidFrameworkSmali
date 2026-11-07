.class abstract Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;
.super Ljava/lang/Object;
.source "Http1xStream.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/Http1xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractSource"
.end annotation


# instance fields
.field protected blacklist closed:Z

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/http/Http1xStream;

.field protected final blacklist timeout:Lcom/android/okhttp/okio/ForwardingTimeout;


# direct methods
.method private constructor blacklist <init>(Lcom/android/okhttp/internal/http/Http1xStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 345
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    new-instance v0, Lcom/android/okhttp/okio/ForwardingTimeout;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->source:Lcom/android/okhttp/okio/BufferedSource;
    invoke-static {p1}, Lcom/android/okhttp/internal/http/Http1xStream;->access$600(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/okhttp/okio/ForwardingTimeout;-><init>(Lcom/android/okhttp/okio/Timeout;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/Http1xStream$1;)V
    .registers 3

    .line 345
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;)V

    return-void
.end method


# virtual methods
.method protected final blacklist endOfInput()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->state:I
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$500(Lcom/android/okhttp/internal/http/Http1xStream;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2a

    .line 360
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    # invokes: Lcom/android/okhttp/internal/http/Http1xStream;->detachTimeout(Lcom/android/okhttp/okio/ForwardingTimeout;)V
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/Http1xStream;->access$400(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/okio/ForwardingTimeout;)V

    .line 362
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    const/4 v1, 0x6

    # setter for: Lcom/android/okhttp/internal/http/Http1xStream;->state:I
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/Http1xStream;->access$502(Lcom/android/okhttp/internal/http/Http1xStream;I)I

    .line 363
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$700(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 364
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$700(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v0

    iget-object p0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-virtual {v0, p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->streamFinished(Lcom/android/okhttp/internal/http/HttpStream;)V

    :cond_29
    return-void

    .line 358
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->state:I
    invoke-static {p0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$500(Lcom/android/okhttp/internal/http/Http1xStream;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 350
    iget-object p0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    return-object p0
.end method

.method protected final blacklist unexpectedEndOfInput()V
    .registers 3

    .line 369
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->state:I
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$500(Lcom/android/okhttp/internal/http/Http1xStream;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    goto :goto_2b

    .line 371
    :cond_a
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # setter for: Lcom/android/okhttp/internal/http/Http1xStream;->state:I
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/Http1xStream;->access$502(Lcom/android/okhttp/internal/http/Http1xStream;I)I

    .line 372
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$700(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 373
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$700(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->noNewStreams()V

    .line 374
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$700(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v0

    iget-object p0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-virtual {v0, p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->streamFinished(Lcom/android/okhttp/internal/http/HttpStream;)V

    :cond_2b
    :goto_2b
    return-void
.end method
