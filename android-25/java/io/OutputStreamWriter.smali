.class public Ljava/io/OutputStreamWriter;
.super Ljava/io/Writer;
.source "OutputStreamWriter.java"


# instance fields
.field private final se:Lsun/nio/cs/StreamEncoder;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 109
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    #@3
    .line 111
    const/4 v1, 0x0

    #@4
    :try_start_0
    check-cast v1, Ljava/lang/String;

    #@6
    invoke-static {p1, p0, v1}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/lang/String;)Lsun/nio/cs/StreamEncoder;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 108
    return-void

    #@d
    .line 112
    :catch_0
    move-exception v0

    #@e
    .line 113
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/Error;

    #@10
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@13
    throw v1
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    #@3
    .line 98
    if-nez p2, :cond_0

    #@5
    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "charsetName"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 100
    :cond_0
    invoke-static {p1, p0, p2}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/lang/String;)Lsun/nio/cs/StreamEncoder;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    #@14
    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "cs"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 130
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    #@3
    .line 131
    if-nez p2, :cond_0

    #@5
    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "charset"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 133
    :cond_0
    invoke-static {p1, p0, p2}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamEncoder;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    #@14
    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "enc"    # Ljava/nio/charset/CharsetEncoder;

    #@0
    .prologue
    .line 149
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    #@3
    .line 150
    if-nez p2, :cond_0

    #@5
    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "charset encoder"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 152
    :cond_0
    invoke-static {p1, p0, p2}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)Lsun/nio/cs/StreamEncoder;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    #@14
    .line 148
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
    .line 233
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    #@2
    invoke-virtual {v0}, Lsun/nio/cs/StreamEncoder;->close()V

    #@5
    .line 232
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
    .line 229
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    #@2
    invoke-virtual {v0}, Lsun/nio/cs/StreamEncoder;->flush()V

    #@5
    .line 228
    return-void
.end method

.method flushBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    #@2
    invoke-virtual {v0}, Lsun/nio/cs/StreamEncoder;->flushBuffer()V

    #@5
    .line 184
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    #@2
    invoke-virtual {v0}, Lsun/nio/cs/StreamEncoder;->getEncoding()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public write(I)V
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    #@2
    invoke-virtual {v0, p1}, Lsun/nio/cs/StreamEncoder;->write(I)V

    #@5
    .line 193
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lsun/nio/cs/StreamEncoder;->write(Ljava/lang/String;II)V

    #@5
    .line 219
    return-void
.end method

.method public write([CII)V
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lsun/nio/cs/StreamEncoder;->write([CII)V

    #@5
    .line 206
    return-void
.end method
