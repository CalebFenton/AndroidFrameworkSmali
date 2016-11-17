.class Lcom/android/okhttp/okio/Buffer$2;
.super Ljava/io/InputStream;
.source "Buffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/Buffer;->inputStream()Ljava/io/InputStream;
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
    .line 110
    iput-object p1, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    #@2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    #@2
    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@4
    const-wide/32 v2, 0x7fffffff

    #@7
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@a
    move-result-wide v0

    #@b
    long-to-int v0, v0

    #@c
    return v0
.end method

.method public close()V
    .locals 0

    #@0
    .prologue
    .line 124
    return-void
.end method

.method public read()I
    .locals 4

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    #@2
    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-lez v0, :cond_0

    #@a
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    #@c
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    #@f
    move-result v0

    #@10
    and-int/lit16 v0, v0, 0xff

    #@12
    return v0

    #@13
    .line 113
    :cond_0
    const/4 v0, -0x1

    #@14
    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ".inputStream()"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
