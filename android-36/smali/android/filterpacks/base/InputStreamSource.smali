.class public Landroid/filterpacks/base/InputStreamSource;
.super Landroid/filterfw/core/Filter;
.source "InputStreamSource.java"


# instance fields
.field private blacklist mInputStream:Ljava/io/InputStream;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "stream"
    .end annotation
.end field

.field private blacklist mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "format"
    .end annotation
.end field

.field private blacklist mTarget:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "target"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 50
    return-void
.end method


# virtual methods
.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 8
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "fileSize":I
    const/4 v1, 0x0

    .line 68
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    :try_start_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 69
    .local v2, "byteStream":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 71
    .local v3, "buffer":[B
    :goto_b
    iget-object v4, p0, Landroid/filterpacks/base/InputStreamSource;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "bytesRead":I
    if-lez v4, :cond_1a

    .line 72
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 73
    add-int/2addr v0, v5

    goto :goto_b

    .line 75
    :cond_1a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_22} :catch_41

    .line 79
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "buffer":[B
    .end local v5    # "bytesRead":I
    .local v4, "byteBuffer":Ljava/nio/ByteBuffer;
    nop

    .line 82
    iget-object v1, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v1, v0}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(I)V

    .line 83
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 84
    .local v1, "output":Landroid/filterfw/core/Frame;
    invoke-virtual {v1, v4}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    .line 87
    const-string v2, "data"

    invoke-virtual {p0, v2, v1}, Landroid/filterpacks/base/InputStreamSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 90
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 93
    invoke-virtual {p0, v2}, Landroid/filterpacks/base/InputStreamSource;->closeOutputPort(Ljava/lang/String;)V

    .line 94
    return-void

    .line 76
    .end local v4    # "byteBuffer":Ljava/nio/ByteBuffer;
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    :catch_41
    move-exception v2

    .line 77
    .local v2, "exception":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InputStreamSource: Could not read stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 78
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public blacklist setupPorts()V
    .registers 4

    .line 54
    iget-object v0, p0, Landroid/filterpacks/base/InputStreamSource;->mTarget:Ljava/lang/String;

    invoke-static {v0}, Landroid/filterfw/core/FrameFormat;->readTargetString(Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, "target":I
    iget-object v1, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    if-nez v1, :cond_10

    .line 56
    invoke-static {v0}, Landroid/filterfw/format/PrimitiveFormat;->createByteFormat(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 58
    :cond_10
    const-string v1, "data"

    iget-object v2, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {p0, v1, v2}, Landroid/filterpacks/base/InputStreamSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 59
    return-void
.end method
