.class final Lcom/android/okhttp/internal/framed/Hpack$Writer;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final blacklist out:Lcom/android/okhttp/okio/Buffer;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/Buffer;)V
    .registers 2

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    return-void
.end method


# virtual methods
.method blacklist writeByteString(Lcom/android/okhttp/okio/ByteString;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 419
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/Buffer;

    return-void
.end method

.method blacklist writeHeaders(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_4d

    .line 382
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/okhttp/internal/framed/Header;

    iget-object v3, v3, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v3}, Lcom/android/okhttp/okio/ByteString;->toAsciiLowercase()Lcom/android/okhttp/okio/ByteString;

    move-result-object v3

    .line 383
    # getter for: Lcom/android/okhttp/internal/framed/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Hpack;->access$200()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_37

    .line 386
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xf

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 387
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/okhttp/internal/framed/Header;

    iget-object v3, v3, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0, v3}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lcom/android/okhttp/okio/ByteString;)V

    goto :goto_4a

    .line 389
    :cond_37
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v4, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 390
    invoke-virtual {p0, v3}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lcom/android/okhttp/okio/ByteString;)V

    .line 391
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/okhttp/internal/framed/Header;

    iget-object v3, v3, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0, v3}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lcom/android/okhttp/okio/ByteString;)V

    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_4d
    return-void
.end method

.method blacklist writeInt(III)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ge p1, p2, :cond_9

    .line 400
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    or-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    return-void

    .line 405
    :cond_9
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    sub-int/2addr p1, p2

    :goto_10
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1f

    and-int/lit8 p3, p1, 0x7f

    .line 411
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_10

    .line 414
    :cond_1f
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Hpack$Writer;->out:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    return-void
.end method
