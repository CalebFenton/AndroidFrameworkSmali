.class Ljava/io/InputStream$1;
.super Ljava/io/InputStream;
.source "InputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/InputStream;->nullInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private volatile blacklist closed:Z


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method private blacklist ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-boolean v0, p0, Ljava/io/InputStream$1;->closed:Z

    if-nez v0, :cond_5

    .line 93
    return-void

    .line 91
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/io/InputStream$1;->ensureOpen()V

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/InputStream$1;->closed:Z

    .line 164
    return-void
.end method

.method public whitelist test-api read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/io/InputStream$1;->ensureOpen()V

    .line 104
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 110
    if-nez p3, :cond_8

    .line 111
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_8
    invoke-direct {p0}, Ljava/io/InputStream$1;->ensureOpen()V

    .line 114
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api readAllBytes()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/io/InputStream$1;->ensureOpen()V

    .line 120
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public whitelist test-api readNBytes([BII)I
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 127
    invoke-direct {p0}, Ljava/io/InputStream$1;->ensureOpen()V

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api readNBytes(I)[B
    .registers 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    if-ltz p1, :cond_9

    .line 136
    invoke-direct {p0}, Ljava/io/InputStream$1;->ensureOpen()V

    .line 137
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 134
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "len < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .registers 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/io/InputStream$1;->ensureOpen()V

    .line 143
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist test-api skipNBytes(J)V
    .registers 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/io/InputStream$1;->ensureOpen()V

    .line 149
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_a

    .line 152
    return-void

    .line 150
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public whitelist test-api transferTo(Ljava/io/OutputStream;)J
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-direct {p0}, Ljava/io/InputStream$1;->ensureOpen()V

    .line 158
    const-wide/16 v0, 0x0

    return-wide v0
.end method
