.class public Landroid/filterpacks/base/OutputStreamTarget;
.super Landroid/filterfw/core/Filter;
.source "OutputStreamTarget.java"


# instance fields
.field private blacklist mOutputStream:Ljava/io/OutputStream;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "stream"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 8
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 48
    const-string v0, "data"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/OutputStreamTarget;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 51
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_21

    .line 52
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    .local v1, "stringVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 54
    .local v1, "data":Ljava/nio/ByteBuffer;
    goto :goto_25

    .line 55
    .end local v1    # "data":Ljava/nio/ByteBuffer;
    :cond_21
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 58
    .restart local v1    # "data":Ljava/nio/ByteBuffer;
    :goto_25
    :try_start_25
    iget-object v2, p0, Landroid/filterpacks/base/OutputStreamTarget;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 59
    iget-object v2, p0, Landroid/filterpacks/base/OutputStreamTarget;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_38} :catch_3a

    .line 63
    nop

    .line 64
    return-void

    .line 60
    :catch_3a
    move-exception v2

    .line 61
    .local v2, "exception":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutputStreamTarget: Could not write to stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 62
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
    .registers 2

    .line 43
    const-string v0, "data"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/OutputStreamTarget;->addInputPort(Ljava/lang/String;)V

    .line 44
    return-void
.end method
