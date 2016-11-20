.class public abstract Ljava/io/FilterReader;
.super Ljava/io/Reader;
.source "FilterReader.java"


# instance fields
.field protected in:Ljava/io/Reader;


# direct methods
.method protected constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .param p1, "in"    # Ljava/io/Reader;

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    #@3
    .line 56
    iput-object p1, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

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
    .line 121
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    #@2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    #@5
    .line 120
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V

    #@5
    .line 107
    return-void
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    #@2
    invoke-virtual {v0}, Ljava/io/Reader;->markSupported()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    #@2
    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([CII)I
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
    .line 74
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    #@2
    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    #@2
    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    #@5
    .line 116
    return-void
.end method

.method public skip(J)J
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/Reader;->skip(J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method
