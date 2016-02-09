.class public Landroid/filterpacks/base/InputStreamSource;
.super Landroid/filterfw/core/Filter;
.source "InputStreamSource.java"


# instance fields
.field private mInputStream:Ljava/io/InputStream;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "stream"
    .end annotation
.end field

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "format"
    .end annotation
.end field

.field private mTarget:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "target"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 46
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@6
    .line 48
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 10
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 63
    const/4 v5, 0x0

    #@1
    .line 64
    .local v5, "fileSize":I
    const/4 v1, 0x0

    #@2
    .line 68
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@4
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@7
    .line 69
    .local v2, "byteStream":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    #@9
    new-array v0, v7, [B

    #@b
    .line 71
    .local v0, "buffer":[B
    :goto_0
    iget-object v7, p0, Landroid/filterpacks/base/InputStreamSource;->mInputStream:Ljava/io/InputStream;

    #@d
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    #@10
    move-result v3

    #@11
    .local v3, "bytesRead":I
    if-lez v3, :cond_0

    #@13
    .line 72
    const/4 v7, 0x0

    #@14
    invoke-virtual {v2, v0, v7, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@17
    .line 73
    add-int/2addr v5, v3

    #@18
    goto :goto_0

    #@19
    .line 75
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1c
    move-result-object v7

    #@1d
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result-object v1

    #@21
    .line 82
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v7, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@23
    invoke-virtual {v7, v5}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(I)V

    #@26
    .line 83
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@29
    move-result-object v7

    #@2a
    iget-object v8, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@2c
    invoke-virtual {v7, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@2f
    move-result-object v6

    #@30
    .line 84
    .local v6, "output":Landroid/filterfw/core/Frame;
    invoke-virtual {v6, v1}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    #@33
    .line 87
    const-string/jumbo v7, "data"

    #@36
    invoke-virtual {p0, v7, v6}, Landroid/filterpacks/base/InputStreamSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@39
    .line 90
    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@3c
    .line 93
    const-string/jumbo v7, "data"

    #@3f
    invoke-virtual {p0, v7}, Landroid/filterpacks/base/InputStreamSource;->closeOutputPort(Ljava/lang/String;)V

    #@42
    .line 62
    return-void

    #@43
    .line 76
    .end local v0    # "buffer":[B
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "bytesRead":I
    .end local v6    # "output":Landroid/filterfw/core/Frame;
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v4

    #@44
    .line 77
    .local v4, "exception":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    #@46
    .line 78
    new-instance v8, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v9, "InputStreamSource: Could not read stream: "

    #@4e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v8

    #@52
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@55
    move-result-object v9

    #@56
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v8

    #@5a
    const-string/jumbo v9, "!"

    #@5d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v8

    #@61
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v8

    #@65
    .line 77
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@68
    throw v7
.end method

.method public setupPorts()V
    .locals 3

    #@0
    .prologue
    .line 54
    iget-object v1, p0, Landroid/filterpacks/base/InputStreamSource;->mTarget:Ljava/lang/String;

    #@2
    invoke-static {v1}, Landroid/filterfw/core/FrameFormat;->readTargetString(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    .line 55
    .local v0, "target":I
    iget-object v1, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 56
    invoke-static {v0}, Landroid/filterfw/format/PrimitiveFormat;->createByteFormat(I)Landroid/filterfw/core/MutableFrameFormat;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@10
    .line 58
    :cond_0
    const-string/jumbo v1, "data"

    #@13
    iget-object v2, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@15
    invoke-virtual {p0, v1, v2}, Landroid/filterpacks/base/InputStreamSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@18
    .line 53
    return-void
.end method
