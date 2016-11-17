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
    .line 60
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 61
    iput-object p1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@5
    .line 60
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 157
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FilterOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 160
    :goto_0
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    #@8
    .line 155
    return-void

    #@9
    .line 158
    :catch_0
    move-exception v0

    #@a
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
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
    .line 140
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    #@5
    .line 139
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@5
    .line 76
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/FilterOutputStream;->write([BII)V

    #@5
    .line 96
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 121
    or-int v1, p2, p3

    #@2
    array-length v2, p1

    #@3
    add-int v3, p3, p2

    #@5
    sub-int/2addr v2, v3

    #@6
    or-int/2addr v1, v2

    #@7
    add-int v2, p2, p3

    #@9
    or-int/2addr v1, v2

    #@a
    if-gez v1, :cond_0

    #@c
    .line 122
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@e
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@11
    throw v1

    #@12
    .line 124
    :cond_0
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    #@15
    .line 125
    add-int v1, p2, v0

    #@17
    aget-byte v1, p1, v1

    #@19
    invoke-virtual {p0, v1}, Ljava/io/FilterOutputStream;->write(I)V

    #@1c
    .line 124
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 120
    :cond_1
    return-void
.end method
