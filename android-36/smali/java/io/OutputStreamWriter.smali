.class public Ljava/io/OutputStreamWriter;
.super Ljava/io/Writer;
.source "OutputStreamWriter.java"


# instance fields
.field private final greylist-max-o se:Lsun/nio/cs/StreamEncoder;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 108
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 109
    nop

    .line 110
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 109
    invoke-static {p1, p0, v0}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    .line 111
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 97
    if-eqz p2, :cond_c

    .line 99
    invoke-static {p1, p0, p2}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/lang/String;)Lsun/nio/cs/StreamEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    .line 100
    return-void

    .line 98
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charsetName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "cs"    # Ljava/nio/charset/Charset;

    .line 125
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 126
    if-eqz p2, :cond_c

    .line 128
    invoke-static {p1, p0, p2}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    .line 129
    return-void

    .line 127
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "enc"    # Ljava/nio/charset/CharsetEncoder;

    .line 143
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 144
    if-eqz p2, :cond_c

    .line 146
    invoke-static {p1, p0, p2}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)Lsun/nio/cs/StreamEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    .line 147
    return-void

    .line 145
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset encoder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 4
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_d

    .line 235
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    move-object v1, p1

    check-cast v1, Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Lsun/nio/cs/StreamEncoder;->write(Ljava/nio/CharBuffer;)V

    goto :goto_16

    .line 237
    :cond_d
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/nio/cs/StreamEncoder;->write(Ljava/lang/String;)V

    .line 239
    :goto_16
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 5
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    if-nez p1, :cond_4

    const-string p1, "null"

    .line 229
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0}, Lsun/nio/cs/StreamEncoder;->close()V

    .line 253
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0}, Lsun/nio/cs/StreamEncoder;->flush()V

    .line 249
    return-void
.end method

.method greylist-max-o flushBuffer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0}, Lsun/nio/cs/StreamEncoder;->flushBuffer()V

    .line 179
    return-void
.end method

.method public whitelist test-api getEncoding()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0}, Lsun/nio/cs/StreamEncoder;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api write(I)V
    .registers 3
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0, p1}, Lsun/nio/cs/StreamEncoder;->write(I)V

    .line 188
    return-void
.end method

.method public whitelist test-api write(Ljava/lang/String;II)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lsun/nio/cs/StreamEncoder;->write(Ljava/lang/String;II)V

    .line 224
    return-void
.end method

.method public whitelist test-api write([CII)V
    .registers 5
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lsun/nio/cs/StreamEncoder;->write([CII)V

    .line 206
    return-void
.end method
