.class public abstract Ljava/io/OutputStream;
.super Ljava/lang/Object;
.source "OutputStream.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    return-void
.end method

.method public abstract write(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
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
    .line 75
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    #@5
    .line 74
    return-void
.end method

.method public write([BII)V
    .locals 3
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
    .line 107
    if-nez p1, :cond_0

    #@2
    .line 108
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 109
    :cond_0
    if-ltz p2, :cond_1

    #@a
    array-length v1, p1

    #@b
    if-le p2, v1, :cond_2

    #@d
    .line 111
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@f
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@12
    throw v1

    #@13
    .line 109
    :cond_2
    if-ltz p3, :cond_1

    #@15
    .line 110
    add-int v1, p2, p3

    #@17
    array-length v2, p1

    #@18
    if-gt v1, v2, :cond_1

    #@1a
    add-int v1, p2, p3

    #@1c
    if-ltz v1, :cond_1

    #@1e
    .line 112
    if-nez p3, :cond_3

    #@20
    .line 113
    return-void

    #@21
    .line 115
    :cond_3
    const/4 v0, 0x0

    #@22
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_4

    #@24
    .line 116
    add-int v1, p2, v0

    #@26
    aget-byte v1, p1, v1

    #@28
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    #@2b
    .line 115
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 106
    :cond_4
    return-void
.end method
