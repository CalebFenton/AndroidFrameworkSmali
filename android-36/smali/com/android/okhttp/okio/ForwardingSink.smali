.class public abstract Lcom/android/okhttp/okio/ForwardingSink;
.super Ljava/lang/Object;
.source "ForwardingSink.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# instance fields
.field private final blacklist delegate:Lcom/android/okhttp/okio/Sink;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/okio/Sink;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 28
    iput-object p1, p0, Lcom/android/okhttp/okio/ForwardingSink;->delegate:Lcom/android/okhttp/okio/Sink;

    return-void

    .line 27
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "delegate == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object p0, p0, Lcom/android/okhttp/okio/ForwardingSink;->delegate:Lcom/android/okhttp/okio/Sink;

    invoke-interface {p0}, Lcom/android/okhttp/okio/Sink;->close()V

    return-void
.end method

.method public final blacklist delegate()Lcom/android/okhttp/okio/Sink;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/android/okhttp/okio/ForwardingSink;->delegate:Lcom/android/okhttp/okio/Sink;

    return-object p0
.end method

.method public whitelist test-api flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object p0, p0, Lcom/android/okhttp/okio/ForwardingSink;->delegate:Lcom/android/okhttp/okio/Sink;

    invoke-interface {p0}, Lcom/android/okhttp/okio/Sink;->flush()V

    return-void
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/okhttp/okio/ForwardingSink;->delegate:Lcom/android/okhttp/okio/Sink;

    invoke-interface {p0}, Lcom/android/okhttp/okio/Sink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/okio/ForwardingSink;->delegate:Lcom/android/okhttp/okio/Sink;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/android/okhttp/okio/ForwardingSink;->delegate:Lcom/android/okhttp/okio/Sink;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    return-void
.end method
