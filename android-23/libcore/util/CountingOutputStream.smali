.class public Llibcore/util/CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CountingOutputStream.java"


# instance fields
.field private count:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 41
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Llibcore/util/CountingOutputStream;->count:J

    #@7
    .line 39
    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    #@0
    .prologue
    .line 57
    iget-wide v0, p0, Llibcore/util/CountingOutputStream;->count:J

    #@2
    return-wide v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Llibcore/util/CountingOutputStream;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@5
    .line 53
    iget-wide v0, p0, Llibcore/util/CountingOutputStream;->count:J

    #@7
    const-wide/16 v2, 0x1

    #@9
    add-long/2addr v0, v2

    #@a
    iput-wide v0, p0, Llibcore/util/CountingOutputStream;->count:J

    #@c
    .line 51
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Llibcore/util/CountingOutputStream;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@5
    .line 47
    iget-wide v0, p0, Llibcore/util/CountingOutputStream;->count:J

    #@7
    int-to-long v2, p3

    #@8
    add-long/2addr v0, v2

    #@9
    iput-wide v0, p0, Llibcore/util/CountingOutputStream;->count:J

    #@b
    .line 45
    return-void
.end method
