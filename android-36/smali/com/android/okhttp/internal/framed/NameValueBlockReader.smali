.class Lcom/android/okhttp/internal/framed/NameValueBlockReader;
.super Ljava/lang/Object;
.source "NameValueBlockReader.java"


# instance fields
.field private blacklist compressedLimit:I

.field private final blacklist inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

.field private final blacklist source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/okio/BufferedSource;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/okhttp/internal/framed/NameValueBlockReader$1;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/internal/framed/NameValueBlockReader$1;-><init>(Lcom/android/okhttp/internal/framed/NameValueBlockReader;Lcom/android/okhttp/okio/Source;)V

    .line 66
    new-instance p1, Lcom/android/okhttp/internal/framed/NameValueBlockReader$2;

    invoke-direct {p1, p0}, Lcom/android/okhttp/internal/framed/NameValueBlockReader$2;-><init>(Lcom/android/okhttp/internal/framed/NameValueBlockReader;)V

    .line 78
    new-instance v1, Lcom/android/okhttp/okio/InflaterSource;

    invoke-direct {v1, v0, p1}, Lcom/android/okhttp/okio/InflaterSource;-><init>(Lcom/android/okhttp/okio/Source;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    .line 79
    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->source:Lcom/android/okhttp/okio/BufferedSource;

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/internal/framed/NameValueBlockReader;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    return p0
.end method

.method static synthetic blacklist access$022(Lcom/android/okhttp/internal/framed/NameValueBlockReader;J)I
    .registers 5

    .line 38
    iget v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    return p1
.end method

.method private blacklist doneReading()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    if-lez v0, :cond_27

    .line 111
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/InflaterSource;->refill()Z

    .line 112
    iget v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    if-nez v0, :cond_e

    goto :goto_27

    :cond_e
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressedLimit > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    :goto_27
    return-void
.end method

.method private blacklist readByteString()Lcom/android/okhttp/okio/ByteString;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v0

    .line 103
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lcom/android/okhttp/okio/BufferedSource;->readByteString(J)Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->close()V

    return-void
.end method

.method public blacklist readNameValueBlock(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    .line 85
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p1}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result p1

    if-ltz p1, :cond_59

    const/16 v0, 0x400

    if-gt p1, v0, :cond_42

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_17
    if-ge v1, p1, :cond_3e

    .line 91
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->toAsciiLowercase()Lcom/android/okhttp/okio/ByteString;

    move-result-object v2

    .line 92
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v3

    .line 93
    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v4

    if-eqz v4, :cond_36

    .line 94
    new-instance v4, Lcom/android/okhttp/internal/framed/Header;

    invoke-direct {v4, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 93
    :cond_36
    new-instance p0, Ljava/io/IOException;

    const-string p1, "name.size == 0"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_3e
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->doneReading()V

    return-object v0

    .line 87
    :cond_42
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numberOfPairs > 1024: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_59
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numberOfPairs < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
