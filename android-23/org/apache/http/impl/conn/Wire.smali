.class public Lorg/apache/http/impl/conn/Wire;
.super Ljava/lang/Object;
.source "Wire.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>(Lorg/apache/commons/logging/Log;)V
    .locals 0
    .param p1, "log"    # Lorg/apache/commons/logging/Log;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    iput-object p1, p0, Lorg/apache/http/impl/conn/Wire;->log:Lorg/apache/commons/logging/Log;

    #@5
    .line 54
    return-void
.end method

.method private wire(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 6
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x22

    #@2
    const/4 v4, 0x0

    #@3
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    .line 62
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    #@b
    move-result v1

    #@c
    .local v1, "ch":I
    const/4 v2, -0x1

    #@d
    if-eq v1, v2, :cond_4

    #@f
    .line 63
    const/16 v2, 0xd

    #@11
    if-ne v1, v2, :cond_0

    #@13
    .line 64
    const-string/jumbo v2, "[\\r]"

    #@16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    goto :goto_0

    #@1a
    .line 65
    :cond_0
    const/16 v2, 0xa

    #@1c
    if-ne v1, v2, :cond_1

    #@1e
    .line 66
    const-string/jumbo v2, "[\\n]\""

    #@21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 67
    const-string/jumbo v2, "\""

    #@27
    invoke-virtual {v0, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 68
    invoke-virtual {v0, v4, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 69
    iget-object v2, p0, Lorg/apache/http/impl/conn/Wire;->log:Lorg/apache/commons/logging/Log;

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@36
    .line 70
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    #@39
    goto :goto_0

    #@3a
    .line 71
    :cond_1
    const/16 v2, 0x20

    #@3c
    if-lt v1, v2, :cond_2

    #@3e
    const/16 v2, 0x7f

    #@40
    if-le v1, v2, :cond_3

    #@42
    .line 72
    :cond_2
    const-string/jumbo v2, "[0x"

    #@45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 74
    const-string/jumbo v2, "]"

    #@52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    goto :goto_0

    #@56
    .line 76
    :cond_3
    int-to-char v2, v1

    #@57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a
    goto :goto_0

    #@5b
    .line 79
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@5e
    move-result v2

    #@5f
    if-lez v2, :cond_5

    #@61
    .line 80
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@64
    .line 81
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@67
    .line 82
    invoke-virtual {v0, v4, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    .line 83
    iget-object v2, p0, Lorg/apache/http/impl/conn/Wire;->log:Lorg/apache/commons/logging/Log;

    #@6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@73
    .line 59
    :cond_5
    return-void
.end method


# virtual methods
.method public enabled()Z
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/http/impl/conn/Wire;->log:Lorg/apache/commons/logging/Log;

    #@2
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public input(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [B

    #@3
    int-to-byte v1, p1

    #@4
    const/4 v2, 0x0

    #@5
    aput-byte v1, v0, v2

    #@7
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/Wire;->input([B)V

    #@a
    .line 146
    return-void
.end method

.method public input(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    if-nez p1, :cond_0

    #@2
    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Input may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 105
    :cond_0
    const-string/jumbo v0, "<< "

    #@e
    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/conn/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    #@11
    .line 101
    return-void
.end method

.method public input(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    if-nez p1, :cond_0

    #@2
    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Input may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 163
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/Wire;->input([B)V

    #@12
    .line 159
    return-void
.end method

.method public input([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    if-nez p1, :cond_0

    #@2
    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Input may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 137
    :cond_0
    const-string/jumbo v0, "<< "

    #@e
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@10
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@13
    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/conn/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    #@16
    .line 133
    return-void
.end method

.method public input([BII)V
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
    .line 118
    if-nez p1, :cond_0

    #@2
    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Input may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 121
    :cond_0
    const-string/jumbo v0, "<< "

    #@e
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@10
    invoke-direct {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    #@13
    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/conn/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    #@16
    .line 117
    return-void
.end method

.method public output(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [B

    #@3
    int-to-byte v1, p1

    #@4
    const/4 v2, 0x0

    #@5
    aput-byte v1, v0, v2

    #@7
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/Wire;->output([B)V

    #@a
    .line 141
    return-void
.end method

.method public output(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "outstream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    if-nez p1, :cond_0

    #@2
    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Output may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 97
    :cond_0
    const-string/jumbo v0, ">> "

    #@e
    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/conn/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    #@11
    .line 93
    return-void
.end method

.method public output(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    if-nez p1, :cond_0

    #@2
    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Output may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 155
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/Wire;->output([B)V

    #@12
    .line 151
    return-void
.end method

.method public output([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    if-nez p1, :cond_0

    #@2
    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Output may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 129
    :cond_0
    const-string/jumbo v0, ">> "

    #@e
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@10
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@13
    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/conn/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    #@16
    .line 125
    return-void
.end method

.method public output([BII)V
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
    .line 110
    if-nez p1, :cond_0

    #@2
    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Output may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 113
    :cond_0
    const-string/jumbo v0, ">> "

    #@e
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@10
    invoke-direct {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    #@13
    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/conn/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    #@16
    .line 109
    return-void
.end method
