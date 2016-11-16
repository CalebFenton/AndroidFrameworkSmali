.class Ljava/io/ObjectInputStream$PeekInputStream;
.super Ljava/io/InputStream;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeekInputStream"
.end annotation


# instance fields
.field private final in:Ljava/io/InputStream;

.field private peekb:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 2290
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 2285
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    #@6
    .line 2291
    iput-object p1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    #@8
    .line 2290
    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2351
    iget-object v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    #@3
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    #@6
    move-result v1

    #@7
    iget v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    #@9
    if-ltz v2, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    add-int/2addr v0, v1

    #@d
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2355
    iget-object v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@5
    .line 2354
    return-void
.end method

.method peek()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2299
    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    #@2
    if-ltz v0, :cond_0

    #@4
    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    #@9
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    #@f
    goto :goto_0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2303
    iget v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    #@2
    if-ltz v1, :cond_0

    #@4
    .line 2304
    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    #@6
    .line 2305
    .local v0, "v":I
    const/4 v1, -0x1

    #@7
    iput v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    #@9
    .line 2306
    return v0

    #@a
    .line 2308
    .end local v0    # "v":I
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    #@c
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@f
    move-result v1

    #@10
    return v1
.end method

.method public read([BII)I
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
    const/4 v2, 0x0

    #@1
    .line 2313
    if-nez p3, :cond_0

    #@3
    .line 2314
    return v2

    #@4
    .line 2315
    :cond_0
    iget v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    #@6
    if-gez v2, :cond_1

    #@8
    .line 2316
    iget-object v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    #@a
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 2318
    :cond_1
    add-int/lit8 v1, p2, 0x1

    #@11
    .end local p2    # "off":I
    .local v1, "off":I
    iget v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    #@13
    int-to-byte v2, v2

    #@14
    aput-byte v2, p1, p2

    #@16
    .line 2319
    add-int/lit8 p3, p3, -0x1

    #@18
    .line 2320
    const/4 v2, -0x1

    #@19
    iput v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    #@1b
    .line 2321
    iget-object v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    #@1d
    invoke-virtual {v2, p1, v1, p3}, Ljava/io/InputStream;->read([BII)I

    #@20
    move-result v0

    #@21
    .line 2322
    .local v0, "n":I
    if-ltz v0, :cond_2

    #@23
    add-int/lit8 v2, v0, 0x1

    #@25
    :goto_0
    return v2

    #@26
    :cond_2
    const/4 v2, 0x1

    #@27
    goto :goto_0
.end method

.method readFully([BII)V
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
    .line 2327
    const/4 v1, 0x0

    #@1
    .line 2328
    .local v1, "n":I
    :goto_0
    if-ge v1, p3, :cond_1

    #@3
    .line 2329
    add-int v2, p2, v1

    #@5
    sub-int v3, p3, v1

    #@7
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    #@a
    move-result v0

    #@b
    .line 2330
    .local v0, "count":I
    if-gez v0, :cond_0

    #@d
    .line 2331
    new-instance v2, Ljava/io/EOFException;

    #@f
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@12
    throw v2

    #@13
    .line 2333
    :cond_0
    add-int/2addr v1, v0

    #@14
    goto :goto_0

    #@15
    .line 2326
    .end local v0    # "count":I
    :cond_1
    return-void
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 2338
    cmp-long v1, p1, v2

    #@4
    if-gtz v1, :cond_0

    #@6
    .line 2339
    return-wide v2

    #@7
    .line 2341
    :cond_0
    const/4 v0, 0x0

    #@8
    .line 2342
    .local v0, "skipped":I
    iget v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    #@a
    if-ltz v1, :cond_1

    #@c
    .line 2343
    const/4 v1, -0x1

    #@d
    iput v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    #@f
    .line 2344
    const/4 v0, 0x1

    #@10
    .line 2345
    const-wide/16 v2, 0x1

    #@12
    sub-long/2addr p1, v2

    #@13
    .line 2347
    :cond_1
    int-to-long v2, v0

    #@14
    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectInputStream$PeekInputStream;->skip(J)J

    #@17
    move-result-wide v4

    #@18
    add-long/2addr v2, v4

    #@19
    return-wide v2
.end method
