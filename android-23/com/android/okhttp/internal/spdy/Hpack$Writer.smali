.class final Lcom/android/okhttp/internal/spdy/Hpack$Writer;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final out:Lcom/android/okhttp/okio/Buffer;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/Buffer;)V
    .locals 0
    .param p1, "out"    # Lcom/android/okhttp/okio/Buffer;

    #@0
    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 373
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    #@5
    .line 372
    return-void
.end method


# virtual methods
.method writeByteString(Lcom/android/okhttp/okio/ByteString;)V
    .locals 3
    .param p1, "data"    # Lcom/android/okhttp/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 417
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ByteString;->size()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x7f

    #@6
    const/4 v2, 0x0

    #@7
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/okhttp/internal/spdy/Hpack$Writer;->writeInt(III)V

    #@a
    .line 418
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    #@c
    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/Buffer;

    #@f
    .line 416
    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    const/4 v6, 0x0

    #@1
    .line 380
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5
    move-result v2

    #@6
    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@8
    .line 381
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v4

    #@c
    check-cast v4, Lcom/android/okhttp/internal/spdy/Header;

    #@e
    iget-object v4, v4, Lcom/android/okhttp/internal/spdy/Header;->name:Lcom/android/okhttp/okio/ByteString;

    #@10
    invoke-virtual {v4}, Lcom/android/okhttp/okio/ByteString;->toAsciiLowercase()Lcom/android/okhttp/okio/ByteString;

    #@13
    move-result-object v1

    #@14
    .line 382
    .local v1, "name":Lcom/android/okhttp/okio/ByteString;
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Hpack;->-get0()Ljava/util/Map;

    #@17
    move-result-object v4

    #@18
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Ljava/lang/Integer;

    #@1e
    .line 383
    .local v3, "staticIndex":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    #@20
    .line 385
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@23
    move-result v4

    #@24
    add-int/lit8 v4, v4, 0x1

    #@26
    const/16 v5, 0xf

    #@28
    invoke-virtual {p0, v4, v5, v6}, Lcom/android/okhttp/internal/spdy/Hpack$Writer;->writeInt(III)V

    #@2b
    .line 386
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v4

    #@2f
    check-cast v4, Lcom/android/okhttp/internal/spdy/Header;

    #@31
    iget-object v4, v4, Lcom/android/okhttp/internal/spdy/Header;->value:Lcom/android/okhttp/okio/ByteString;

    #@33
    invoke-virtual {p0, v4}, Lcom/android/okhttp/internal/spdy/Hpack$Writer;->writeByteString(Lcom/android/okhttp/okio/ByteString;)V

    #@36
    .line 380
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 388
    :cond_0
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    #@3b
    invoke-virtual {v4, v6}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@3e
    .line 389
    invoke-virtual {p0, v1}, Lcom/android/okhttp/internal/spdy/Hpack$Writer;->writeByteString(Lcom/android/okhttp/okio/ByteString;)V

    #@41
    .line 390
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v4

    #@45
    check-cast v4, Lcom/android/okhttp/internal/spdy/Header;

    #@47
    iget-object v4, v4, Lcom/android/okhttp/internal/spdy/Header;->value:Lcom/android/okhttp/okio/ByteString;

    #@49
    invoke-virtual {p0, v4}, Lcom/android/okhttp/internal/spdy/Hpack$Writer;->writeByteString(Lcom/android/okhttp/okio/ByteString;)V

    #@4c
    goto :goto_1

    #@4d
    .line 378
    .end local v1    # "name":Lcom/android/okhttp/okio/ByteString;
    .end local v3    # "staticIndex":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method writeInt(III)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "prefixMask"    # I
    .param p3, "bits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 398
    if-ge p1, p2, :cond_0

    #@2
    .line 399
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    #@4
    or-int v2, p3, p1

    #@6
    invoke-virtual {v1, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@9
    .line 400
    return-void

    #@a
    .line 404
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    #@c
    or-int v2, p3, p2

    #@e
    invoke-virtual {v1, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@11
    .line 405
    sub-int/2addr p1, p2

    #@12
    .line 408
    :goto_0
    const/16 v1, 0x80

    #@14
    if-lt p1, v1, :cond_1

    #@16
    .line 409
    and-int/lit8 v0, p1, 0x7f

    #@18
    .line 410
    .local v0, "b":I
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    #@1a
    or-int/lit16 v2, v0, 0x80

    #@1c
    invoke-virtual {v1, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@1f
    .line 411
    ushr-int/lit8 p1, p1, 0x7

    #@21
    goto :goto_0

    #@22
    .line 413
    .end local v0    # "b":I
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    #@24
    invoke-virtual {v1, p1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@27
    .line 396
    return-void
.end method
