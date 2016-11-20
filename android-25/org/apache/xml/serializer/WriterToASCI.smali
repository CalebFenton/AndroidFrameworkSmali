.class Lorg/apache/xml/serializer/WriterToASCI;
.super Ljava/io/Writer;
.source "WriterToASCI.java"

# interfaces
.implements Lorg/apache/xml/serializer/WriterChain;


# instance fields
.field private final m_os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    #@3
    .line 53
    iput-object p1, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    #@5
    .line 51
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
    .line 134
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@5
    .line 132
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
    .line 122
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    #@5
    .line 120
    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    #@2
    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    #@0
    .prologue
    .line 153
    const/4 v0, 0x0

    #@1
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
    .line 92
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@5
    .line 90
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    .line 105
    .local v1, "n":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@7
    .line 107
    iget-object v2, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    #@9
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v3

    #@d
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    #@10
    .line 105
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 102
    :cond_0
    return-void
.end method

.method public write([CII)V
    .locals 4
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    add-int v1, p3, p2

    #@2
    .line 73
    .local v1, "n":I
    move v0, p2

    #@3
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@5
    .line 75
    iget-object v2, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    #@7
    aget-char v3, p1, v0

    #@9
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    #@c
    .line 73
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 68
    :cond_0
    return-void
.end method
