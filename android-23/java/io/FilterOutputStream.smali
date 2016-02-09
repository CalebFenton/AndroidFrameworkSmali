.class public Ljava/io/FilterOutputStream;
.super Ljava/io/OutputStream;
.source "FilterOutputStream.java"


# instance fields
.field protected out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 48
    iput-object p1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@5
    .line 47
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    const/4 v1, 0x0

    #@1
    .line 61
    .local v1, "thrown":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FilterOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    .line 67
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    #@9
    .line 74
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    #@b
    .line 75
    invoke-static {v1}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    #@e
    .line 58
    :cond_1
    return-void

    #@f
    .line 62
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    #@10
    .line 63
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    #@11
    .local v1, "thrown":Ljava/lang/Throwable;
    goto :goto_0

    #@12
    .line 68
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    #@13
    .line 69
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    #@15
    .line 70
    move-object v1, v0

    #@16
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    goto :goto_1
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
    .line 88
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    #@5
    .line 87
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@5
    .line 128
    return-void
.end method

.method public write([BII)V
    .locals 2
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
    .line 110
    array-length v1, p1

    #@1
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 111
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    #@7
    .line 114
    add-int v1, p2, v0

    #@9
    aget-byte v1, p1, v1

    #@b
    invoke-virtual {p0, v1}, Ljava/io/FilterOutputStream;->write(I)V

    #@e
    .line 111
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 109
    :cond_0
    return-void
.end method
