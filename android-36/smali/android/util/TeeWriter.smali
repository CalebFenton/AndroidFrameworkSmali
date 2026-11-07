.class public Landroid/util/TeeWriter;
.super Ljava/io/Writer;
.source "TeeWriter.java"


# instance fields
.field private final blacklist mWriters:[Ljava/io/Writer;


# direct methods
.method public varargs constructor blacklist <init>([Ljava/io/Writer;)V
    .registers 5
    .param p1, "writers"    # [Ljava/io/Writer;

    .line 36
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 37
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_f

    aget-object v2, p1, v1

    .line 38
    .local v2, "writer":Ljava/io/Writer;
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .end local v2    # "writer":Ljava/io/Writer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 40
    :cond_f
    iput-object p1, p0, Landroid/util/TeeWriter;->mWriters:[Ljava/io/Writer;

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Landroid/util/TeeWriter;->mWriters:[Ljava/io/Writer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 60
    .local v3, "writer":Ljava/io/Writer;
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 59
    .end local v3    # "writer":Ljava/io/Writer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 62
    :cond_e
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Landroid/util/TeeWriter;->mWriters:[Ljava/io/Writer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 53
    .local v3, "writer":Ljava/io/Writer;
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 52
    .end local v3    # "writer":Ljava/io/Writer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 55
    :cond_e
    return-void
.end method

.method public whitelist test-api write([CII)V
    .registers 8
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Landroid/util/TeeWriter;->mWriters:[Ljava/io/Writer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 46
    .local v3, "writer":Ljava/io/Writer;
    invoke-virtual {v3, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 45
    .end local v3    # "writer":Ljava/io/Writer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 48
    :cond_e
    return-void
.end method
