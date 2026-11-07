.class Lcom/android/okhttp/okio/Buffer$1;
.super Ljava/io/OutputStream;
.source "Buffer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/Buffer;->outputStream()Ljava/io/OutputStream;
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

    .line 70
    iput-object p1, p0, Lcom/android/okhttp/okio/Buffer$1;->this$0:Lcom/android/okhttp/okio/Buffer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 0
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 1

    .line 0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".outputStream()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api write(I)V
    .registers 2

    .line 72
    iget-object p0, p0, Lcom/android/okhttp/okio/Buffer$1;->this$0:Lcom/android/okhttp/okio/Buffer;

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 4

    .line 76
    iget-object p0, p0, Lcom/android/okhttp/okio/Buffer$1;->this$0:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    return-void
.end method
