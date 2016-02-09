.class Lcom/android/okhttp/internal/spdy/NameValueBlockReader;
.super Ljava/lang/Object;
.source "NameValueBlockReader.java"


# instance fields
.field private compressedLimit:I

.field private final inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

.field private final source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/spdy/NameValueBlockReader;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/internal/spdy/NameValueBlockReader;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    #@2
    return p1
.end method

.method public constructor <init>(Lcom/android/okhttp/okio/BufferedSource;)V
    .locals 3
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    new-instance v1, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$1;

    #@5
    invoke-direct {v1, p0, p1}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$1;-><init>(Lcom/android/okhttp/internal/spdy/NameValueBlockReader;Lcom/android/okhttp/okio/Source;)V

    #@8
    .line 65
    .local v1, "throttleSource":Lcom/android/okhttp/okio/Source;
    new-instance v0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$2;

    #@a
    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$2;-><init>(Lcom/android/okhttp/internal/spdy/NameValueBlockReader;)V

    #@d
    .line 77
    .local v0, "inflater":Ljava/util/zip/Inflater;
    new-instance v2, Lcom/android/okhttp/okio/InflaterSource;

    #@f
    invoke-direct {v2, v1, v0}, Lcom/android/okhttp/okio/InflaterSource;-><init>(Lcom/android/okhttp/okio/Source;Ljava/util/zip/Inflater;)V

    #@12
    iput-object v2, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    #@14
    .line 78
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    #@16
    invoke-static {v2}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    #@19
    move-result-object v2

    #@1a
    iput-object v2, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@1c
    .line 50
    return-void
.end method

.method private doneReading()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    iget v0, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    #@2
    if-lez v0, :cond_0

    #@4
    .line 110
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    #@6
    invoke-virtual {v0}, Lcom/android/okhttp/okio/InflaterSource;->refill()Z

    #@9
    .line 111
    iget v0, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    #@b
    if-eqz v0, :cond_0

    #@d
    new-instance v0, Ljava/io/IOException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "compressedLimit > 0: "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget v2, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 105
    :cond_0
    return-void
.end method

.method private readByteString()Lcom/android/okhttp/okio/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@5
    move-result v0

    #@6
    .line 102
    .local v0, "length":I
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@8
    int-to-long v2, v0

    #@9
    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->readByteString(J)Lcom/android/okhttp/okio/ByteString;

    #@c
    move-result-object v1

    #@d
    return-object v1
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
    .line 116
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->close()V

    #@5
    .line 115
    return-void
.end method

.method public readNameValueBlock(I)Ljava/util/List;
    .locals 8
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    iget v5, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    #@2
    add-int/2addr v5, p1

    #@3
    iput v5, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    #@5
    .line 84
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@7
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@a
    move-result v3

    #@b
    .line 85
    .local v3, "numberOfPairs":I
    if-gez v3, :cond_0

    #@d
    new-instance v5, Ljava/io/IOException;

    #@f
    new-instance v6, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v7, "numberOfPairs < 0: "

    #@17
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v5

    #@27
    .line 86
    :cond_0
    const/16 v5, 0x400

    #@29
    if-le v3, v5, :cond_1

    #@2b
    new-instance v5, Ljava/io/IOException;

    #@2d
    new-instance v6, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v7, "numberOfPairs > 1024: "

    #@35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v6

    #@41
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@44
    throw v5

    #@45
    .line 88
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    #@47
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@4a
    .line 89
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    const/4 v1, 0x0

    #@4b
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    #@4d
    .line 90
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5}, Lcom/android/okhttp/okio/ByteString;->toAsciiLowercase()Lcom/android/okhttp/okio/ByteString;

    #@54
    move-result-object v2

    #@55
    .line 91
    .local v2, "name":Lcom/android/okhttp/okio/ByteString;
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    #@58
    move-result-object v4

    #@59
    .line 92
    .local v4, "values":Lcom/android/okhttp/okio/ByteString;
    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->size()I

    #@5c
    move-result v5

    #@5d
    if-nez v5, :cond_2

    #@5f
    new-instance v5, Ljava/io/IOException;

    #@61
    const-string/jumbo v6, "name.size == 0"

    #@64
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@67
    throw v5

    #@68
    .line 93
    :cond_2
    new-instance v5, Lcom/android/okhttp/internal/spdy/Header;

    #@6a
    invoke-direct {v5, v2, v4}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    #@6d
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@70
    .line 89
    add-int/lit8 v1, v1, 0x1

    #@72
    goto :goto_0

    #@73
    .line 96
    .end local v2    # "name":Lcom/android/okhttp/okio/ByteString;
    .end local v4    # "values":Lcom/android/okhttp/okio/ByteString;
    :cond_3
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->doneReading()V

    #@76
    .line 97
    return-object v0
.end method
