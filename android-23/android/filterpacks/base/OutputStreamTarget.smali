.class public Landroid/filterpacks/base/OutputStreamTarget;
.super Landroid/filterfw/core/Filter;
.source "OutputStreamTarget.java"


# instance fields
.field private mOutputStream:Ljava/io/OutputStream;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "stream"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 37
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 8
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 48
    const-string/jumbo v4, "data"

    #@3
    invoke-virtual {p0, v4}, Landroid/filterpacks/base/OutputStreamTarget;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v2

    #@7
    .line 51
    .local v2, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v4

    #@b
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    #@e
    move-result-object v4

    #@f
    const-class v5, Ljava/lang/String;

    #@11
    if-ne v4, v5, :cond_0

    #@13
    .line 52
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Ljava/lang/String;

    #@19
    .line 53
    .local v3, "stringVal":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    #@1c
    move-result-object v4

    #@1d
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@20
    move-result-object v0

    #@21
    .line 58
    .end local v3    # "stringVal":Ljava/lang/String;
    .local v0, "data":Ljava/nio/ByteBuffer;
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/filterpacks/base/OutputStreamTarget;->mOutputStream:Ljava/io/OutputStream;

    #@23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    #@2a
    move-result v6

    #@2b
    const/4 v7, 0x0

    #@2c
    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    #@2f
    .line 59
    iget-object v4, p0, Landroid/filterpacks/base/OutputStreamTarget;->mOutputStream:Ljava/io/OutputStream;

    #@31
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 47
    return-void

    #@35
    .line 55
    .end local v0    # "data":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getData()Ljava/nio/ByteBuffer;

    #@38
    move-result-object v0

    #@39
    .restart local v0    # "data":Ljava/nio/ByteBuffer;
    goto :goto_0

    #@3a
    .line 60
    :catch_0
    move-exception v1

    #@3b
    .line 61
    .local v1, "exception":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@3d
    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v6, "OutputStreamTarget: Could not write to stream: "

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    const-string/jumbo v6, "!"

    #@54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    .line 61
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v4
.end method

.method public setupPorts()V
    .locals 1

    #@0
    .prologue
    .line 43
    const-string/jumbo v0, "data"

    #@3
    invoke-virtual {p0, v0}, Landroid/filterpacks/base/OutputStreamTarget;->addInputPort(Ljava/lang/String;)V

    #@6
    .line 42
    return-void
.end method
