.class Lorg/apache/xml/serializer/WriterToASCI;
.super Ljava/io/Writer;
.source "WriterToASCI.java"

# interfaces
.implements Lorg/apache/xml/serializer/WriterChain;
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final greylist m_os:Ljava/io/OutputStream;


# direct methods
.method public constructor greylist <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object p0, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public whitelist test-api flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object p0, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public greylist getOutputStream()Ljava/io/OutputStream;
    .registers 1

    .line 145
    iget-object p0, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    return-object p0
.end method

.method public greylist getWriter()Ljava/io/Writer;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api write(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object p0, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public whitelist test-api write(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    .line 107
    iget-object v2, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method

.method public whitelist test-api write([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_d

    .line 75
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    aget-char v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method
