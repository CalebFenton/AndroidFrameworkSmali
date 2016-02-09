.class public Ljava/io/StringWriter;
.super Ljava/io/Writer;
.source "StringWriter.java"


# instance fields
.field private buf:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    #@3
    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    #@5
    const/16 v1, 0x10

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@a
    iput-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    #@c
    .line 42
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    #@e
    iput-object v0, p0, Ljava/io/StringWriter;->lock:Ljava/lang/Object;

    #@10
    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "initialSize"    # I

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    #@3
    .line 55
    if-gez p1, :cond_0

    #@5
    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "initialSize < 0: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 58
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    #@21
    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@24
    iput-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    #@26
    .line 59
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    #@28
    iput-object v0, p0, Ljava/io/StringWriter;->lock:Ljava/lang/Object;

    #@2a
    .line 54
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/StringWriter;
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 180
    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->write(I)V

    #@3
    .line 181
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 196
    if-nez p1, :cond_0

    #@2
    .line 197
    const-string/jumbo p1, "null"

    #@5
    .line 199
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p0, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    #@c
    .line 200
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/StringWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 226
    if-nez p1, :cond_0

    #@2
    .line 227
    const-string/jumbo p1, "null"

    #@5
    .line 229
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 230
    .local v0, "output":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;II)V

    #@15
    .line 231
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 195
    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 225
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/StringWriter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    return-void
.end method

.method public flush()V
    .locals 0

    #@0
    .prologue
    .line 79
    return-void
.end method

.method public getBuffer()Ljava/lang/StringBuffer;
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "oneChar"    # I

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    #@2
    int-to-char v1, p1

    #@3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@6
    .line 134
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5
    .line 146
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 166
    add-int v1, p2, p3

    #@2
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 167
    .local v0, "sub":Ljava/lang/String;
    iget-object v1, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    #@8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 165
    return-void
.end method

.method public write([CII)V
    .locals 1
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 119
    array-length v0, p1

    #@1
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 120
    if-nez p3, :cond_0

    #@6
    .line 121
    return-void

    #@7
    .line 123
    :cond_0
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    #@9
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@c
    .line 118
    return-void
.end method
