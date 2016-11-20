.class public Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;
.super Ljava/lang/Object;
.source "LoggingSessionInputBuffer.java"

# interfaces
.implements Lorg/apache/http/io/SessionInputBuffer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final in:Lorg/apache/http/io/SessionInputBuffer;

.field private final wire:Lorg/apache/http/impl/conn/Wire;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/impl/conn/Wire;)V
    .locals 0
    .param p1, "in"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "wire"    # Lorg/apache/http/impl/conn/Wire;

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    iput-object p1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@5
    .line 69
    iput-object p2, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    #@7
    .line 66
    return-void
.end method


# virtual methods
.method public getMetrics()Lorg/apache/http/io/HttpTransportMetrics;
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@2
    invoke-interface {v0}, Lorg/apache/http/io/SessionInputBuffer;->getMetrics()Lorg/apache/http/io/HttpTransportMetrics;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isDataAvailable(I)Z
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/http/io/SessionInputBuffer;->isDataAvailable(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@2
    invoke-interface {v1}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    #@5
    move-result v0

    #@6
    .line 86
    .local v0, "l":I
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    #@8
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/Wire;->enabled()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    if-lez v0, :cond_0

    #@10
    .line 87
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    #@12
    invoke-virtual {v1, v0}, Lorg/apache/http/impl/conn/Wire;->input(I)V

    #@15
    .line 89
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 93
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@3
    invoke-interface {v1, p1}, Lorg/apache/http/io/SessionInputBuffer;->read([B)I

    #@6
    move-result v0

    #@7
    .line 94
    .local v0, "l":I
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    #@9
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/Wire;->enabled()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    if-lez v0, :cond_0

    #@11
    .line 95
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    #@13
    invoke-virtual {v1, p1, v2, v0}, Lorg/apache/http/impl/conn/Wire;->input([BII)V

    #@16
    .line 97
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@2
    invoke-interface {v1, p1, p2, p3}, Lorg/apache/http/io/SessionInputBuffer;->read([BII)I

    #@5
    move-result v0

    #@6
    .line 78
    .local v0, "l":I
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    #@8
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/Wire;->enabled()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    if-lez v0, :cond_0

    #@10
    .line 79
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    #@12
    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/http/impl/conn/Wire;->input([BII)V

    #@15
    .line 81
    :cond_0
    return v0
.end method

.method public readLine(Lorg/apache/http/util/CharArrayBuffer;)I
    .locals 6
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    iget-object v3, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@2
    invoke-interface {v3, p1}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    #@5
    move-result v0

    #@6
    .line 110
    .local v0, "l":I
    iget-object v3, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    #@8
    invoke-virtual {v3}, Lorg/apache/http/impl/conn/Wire;->enabled()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    if-lez v0, :cond_0

    #@10
    .line 111
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@13
    move-result v3

    #@14
    sub-int v1, v3, v0

    #@16
    .line 112
    .local v1, "pos":I
    new-instance v2, Ljava/lang/String;

    #@18
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    #@1f
    .line 113
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    #@21
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    const-string/jumbo v5, "[EOL]"

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/conn/Wire;->input(Ljava/lang/String;)V

    #@38
    .line 115
    .end local v1    # "pos":I
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@2
    invoke-interface {v1}, Lorg/apache/http/io/SessionInputBuffer;->readLine()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 102
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    #@8
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/Wire;->enabled()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 103
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const-string/jumbo v3, "[EOL]"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/Wire;->input(Ljava/lang/String;)V

    #@29
    .line 105
    :cond_0
    return-object v0
.end method
