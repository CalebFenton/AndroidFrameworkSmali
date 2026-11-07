.class final Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "AbstractMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LimitedInputStream"
.end annotation


# instance fields
.field private blacklist limit:I


# direct methods
.method constructor blacklist <init>(Ljava/io/InputStream;I)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .line 283
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 284
    iput p2, p0, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    .line 285
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    if-gtz v0, :cond_6

    .line 295
    const/4 v0, -0x1

    return v0

    .line 297
    :cond_6
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 298
    .local v0, "result":I
    if-ltz v0, :cond_12

    .line 299
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    .line 301
    :cond_12
    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    if-gtz v0, :cond_6

    .line 307
    const/4 v0, -0x1

    return v0

    .line 309
    :cond_6
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 310
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 311
    .local v0, "result":I
    if-ltz v0, :cond_17

    .line 312
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    .line 314
    :cond_17
    return v0
.end method

.method public whitelist test-api skip(J)J
    .registers 6
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 322
    .local v0, "result":I
    if-ltz v0, :cond_13

    .line 324
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    .line 326
    :cond_13
    int-to-long v1, v0

    return-wide v1
.end method
