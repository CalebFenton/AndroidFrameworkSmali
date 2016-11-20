.class Lcom/android/okhttp/okio/Buffer$1;
.super Ljava/io/OutputStream;
.source "Buffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/Buffer;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/okio/Buffer;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/Buffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/okio/Buffer;

    #@0
    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/okhttp/okio/Buffer$1;->this$0:Lcom/android/okhttp/okio/Buffer;

    #@2
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 80
    return-void
.end method

.method public flush()V
    .locals 0

    #@0
    .prologue
    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, ".outputStream()"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer$1;->this$0:Lcom/android/okhttp/okio/Buffer;

    #@2
    int-to-byte v1, p1

    #@3
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@6
    .line 69
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer$1;->this$0:Lcom/android/okhttp/okio/Buffer;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    #@5
    .line 73
    return-void
.end method
