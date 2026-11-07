.class Lcom/android/okhttp/okio/Buffer$2;
.super Ljava/io/InputStream;
.source "Buffer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/Buffer;->inputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/okio/Buffer;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/Buffer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 5

    .line 123
    iget-object p0, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 0
    return-void
.end method

.method public whitelist test-api read()I
    .registers 5

    .line 114
    iget-object p0, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method public whitelist test-api read([BII)I
    .registers 4

    .line 119
    iget-object p0, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".inputStream()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
