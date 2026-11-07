.class public abstract Ljava/io/OutputStream;
.super Ljava/lang/Object;
.source "OutputStream.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api nullOutputStream()Ljava/io/OutputStream;
    .registers 1

    .line 72
    new-instance v0, Ljava/io/OutputStream$1;

    invoke-direct {v0}, Ljava/io/OutputStream$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    return-void
.end method

.method public abstract whitelist test-api write(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 128
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, p3, :cond_11

    .line 162
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 164
    .end local v0    # "i":I
    :cond_11
    return-void
.end method
