.class public abstract Ljava/io/FilterWriter;
.super Ljava/io/Writer;
.source "FilterWriter.java"


# instance fields
.field protected out:Ljava/io/Writer;


# direct methods
.method protected constructor <init>(Ljava/io/Writer;)V
    .locals 0
    .param p1, "out"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    #@3
    .line 56
    iput-object p1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    #@5
    .line 54
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
    .line 104
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    #@2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    #@5
    .line 103
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
    .line 100
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    #@2
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    #@5
    .line 99
    return-void
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
    .line 65
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    #@5
    .line 64
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
    .line 91
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    #@5
    .line 90
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
    .line 78
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    #@5
    .line 77
    return-void
.end method
