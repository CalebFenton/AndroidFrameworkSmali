.class public Ljava/util/zip/InflaterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "InflaterOutputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x400


# instance fields
.field protected final buf:[B

.field private closed:Z

.field protected final inf:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 47
    new-instance v0, Ljava/util/zip/Inflater;

    #@2
    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    #@5
    invoke-direct {p0, p1, v0}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;)V

    #@8
    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "inf"    # Ljava/util/zip/Inflater;

    #@0
    .prologue
    .line 59
    const/16 v0, 0x400

    #@2
    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;I)V

    #@5
    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;I)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "inf"    # Ljava/util/zip/Inflater;
    .param p3, "bufferSize"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 72
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@4
    .line 37
    iput-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    #@6
    .line 73
    if-nez p1, :cond_0

    #@8
    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v1, "out == null"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 75
    :cond_0
    if-nez p2, :cond_1

    #@13
    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    #@15
    const-string/jumbo v1, "inf == null"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 78
    :cond_1
    if-gtz p3, :cond_2

    #@1e
    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "bufferSize <= 0: "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 81
    :cond_2
    iput-object p2, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    #@3a
    .line 82
    new-array v0, p3, [B

    #@3c
    iput-object v0, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    #@3e
    .line 71
    return-void
.end method

.method private checkClosed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    iget-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 161
    new-instance v0, Ljava/io/IOException;

    #@6
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@9
    throw v0

    #@a
    .line 159
    :cond_0
    return-void
.end method

.method private write()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    :goto_0
    :try_start_0
    iget-object v2, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    #@2
    iget-object v3, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    #@4
    invoke-virtual {v2, v3}, Ljava/util/zip/Inflater;->inflate([B)I

    #@7
    move-result v1

    #@8
    .local v1, "inflated":I
    if-lez v1, :cond_0

    #@a
    .line 152
    iget-object v2, p0, Ljava/util/zip/InflaterOutputStream;->out:Ljava/io/OutputStream;

    #@c
    iget-object v3, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    #@e
    const/4 v4, 0x0

    #@f
    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    goto :goto_0

    #@13
    .line 154
    .end local v1    # "inflated":I
    :catch_0
    move-exception v0

    #@14
    .line 155
    .local v0, "e":Ljava/util/zip/DataFormatException;
    new-instance v2, Ljava/util/zip/ZipException;

    #@16
    invoke-direct {v2}, Ljava/util/zip/ZipException;-><init>()V

    #@19
    throw v2

    #@1a
    .line 148
    .end local v0    # "e":Ljava/util/zip/DataFormatException;
    .restart local v1    # "inflated":I
    :cond_0
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
    .line 91
    iget-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 92
    invoke-virtual {p0}, Ljava/util/zip/InflaterOutputStream;->finish()V

    #@7
    .line 93
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    #@9
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    #@c
    .line 94
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->out:Ljava/io/OutputStream;

    #@e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@11
    .line 95
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    #@14
    .line 90
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->checkClosed()V

    #@3
    .line 113
    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->write()V

    #@6
    .line 111
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/util/zip/InflaterOutputStream;->finish()V

    #@3
    .line 102
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->out:Ljava/io/OutputStream;

    #@5
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    #@8
    .line 100
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 127
    new-array v0, v3, [B

    #@4
    int-to-byte v1, p1

    #@5
    aput-byte v1, v0, v2

    #@7
    invoke-virtual {p0, v0, v2, v3}, Ljava/util/zip/InflaterOutputStream;->write([BII)V

    #@a
    .line 126
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->checkClosed()V

    #@3
    .line 143
    array-length v0, p1

    #@4
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@7
    .line 144
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    #@9
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->setInput([BII)V

    #@c
    .line 145
    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->write()V

    #@f
    .line 141
    return-void
.end method
