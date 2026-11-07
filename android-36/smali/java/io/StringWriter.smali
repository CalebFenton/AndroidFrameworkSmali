.class public Ljava/io/StringWriter;
.super Ljava/io/Writer;
.source "StringWriter.java"


# instance fields
.field private greylist-max-o buf:Ljava/lang/StringBuffer;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    .line 51
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    iput-object v0, p0, Ljava/io/StringWriter;->lock:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 4
    .param p1, "initialSize"    # I

    .line 65
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 66
    if-ltz p1, :cond_11

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    .line 70
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    iput-object v0, p0, Ljava/io/StringWriter;->lock:Ljava/lang/Object;

    .line 71
    return-void

    .line 67
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative buffer size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api append(C)Ljava/io/StringWriter;
    .registers 2
    .param p1, "c"    # C

    .line 210
    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->write(I)V

    .line 211
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;
    .registers 3
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 150
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 151
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/io/StringWriter;
    .registers 5
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 189
    if-nez p1, :cond_4

    const-string p1, "null"

    .line 190
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api append(C)Ljava/io/Writer;
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

    .line 41
    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;)Ljava/io/Writer;
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

    .line 41
    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
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

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/StringWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(C)Ljava/lang/Appendable;
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

    .line 41
    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    move-result-object p1

    return-object p1
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

    .line 41
    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

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

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/StringWriter;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 1

    .line 234
    return-void
.end method

.method public whitelist test-api getBuffer()Ljava/lang/StringBuffer;
    .registers 2

    .line 227
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 218
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api write(I)V
    .registers 4
    .param p1, "c"    # I

    .line 77
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 78
    return-void
.end method

.method public whitelist test-api write(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 106
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    return-void
.end method

.method public whitelist test-api write(Ljava/lang/String;II)V
    .registers 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 122
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    add-int v1, p2, p3

    invoke-virtual {v0, p1, p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 123
    return-void
.end method

.method public whitelist test-api write([CII)V
    .registers 6
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 93
    if-ltz p2, :cond_19

    array-length v0, p1

    if-gt p2, v0, :cond_19

    if-ltz p3, :cond_19

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_19

    add-int v0, p2, p3

    if-ltz v0, :cond_19

    .line 96
    if-nez p3, :cond_13

    .line 97
    return-void

    .line 99
    :cond_13
    iget-object v0, p0, Ljava/io/StringWriter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 100
    return-void

    .line 95
    :cond_19
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
