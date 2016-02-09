.class Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;
.super Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnknownLengthSource"
.end annotation


# instance fields
.field private inputExhausted:Z

.field final synthetic this$0:Lcom/android/okhttp/internal/http/HttpConnection;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/internal/http/HttpConnection;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/HttpConnection;

    #@0
    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;)V

    #@6
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/http/HttpConnection;Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/HttpConnection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;)V

    #@3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 527
    :cond_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->inputExhausted:Z

    #@7
    if-nez v0, :cond_1

    #@9
    .line 528
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->unexpectedEndOfInput()V

    #@c
    .line 530
    :cond_1
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->closed:Z

    #@f
    .line 525
    return-void
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .locals 6
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    .line 512
    const-wide/16 v2, 0x0

    #@4
    cmp-long v2, p2, v2

    #@6
    if-gez v2, :cond_0

    #@8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "byteCount < 0: "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2

    #@22
    .line 513
    :cond_0
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->closed:Z

    #@24
    if-eqz v2, :cond_1

    #@26
    new-instance v2, Ljava/lang/IllegalStateException;

    #@28
    const-string/jumbo v3, "closed"

    #@2b
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 514
    :cond_1
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->inputExhausted:Z

    #@31
    if-eqz v2, :cond_2

    #@33
    return-wide v4

    #@34
    .line 516
    :cond_2
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@36
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpConnection;->-get4(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/okio/BufferedSource;

    #@39
    move-result-object v2

    #@3a
    invoke-interface {v2, p1, p2, p3}, Lcom/android/okhttp/okio/BufferedSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@3d
    move-result-wide v0

    #@3e
    .line 517
    .local v0, "read":J
    cmp-long v2, v0, v4

    #@40
    if-nez v2, :cond_3

    #@42
    .line 518
    const/4 v2, 0x1

    #@43
    iput-boolean v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->inputExhausted:Z

    #@45
    .line 519
    const/4 v2, 0x0

    #@46
    invoke-virtual {p0, v2}, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->endOfInput(Z)V

    #@49
    .line 520
    return-wide v4

    #@4a
    .line 522
    :cond_3
    return-wide v0
.end method
