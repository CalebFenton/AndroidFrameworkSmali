.class Ljava/io/Reader$1;
.super Ljava/io/Reader;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/Reader;->nullReader()Ljava/io/Reader;
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

    .line 81
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method

.method private blacklist ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-boolean v0, p0, Ljava/io/Reader$1;->closed:Z

    if-nez v0, :cond_5

    .line 88
    return-void

    .line 86
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/Reader$1;->closed:Z

    .line 138
    return-void
.end method

.method public whitelist test-api read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/io/Reader$1;->ensureOpen()V

    .line 93
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api read(Ljava/nio/CharBuffer;)I
    .registers 3
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-direct {p0}, Ljava/io/Reader$1;->ensureOpen()V

    .line 110
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 111
    const/4 v0, -0x1

    return v0

    .line 113
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api read([CII)I
    .registers 5
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 99
    invoke-direct {p0}, Ljava/io/Reader$1;->ensureOpen()V

    .line 100
    if-nez p3, :cond_b

    .line 101
    const/4 v0, 0x0

    return v0

    .line 103
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/io/Reader$1;->ensureOpen()V

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api skip(J)J
    .registers 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/io/Reader$1;->ensureOpen()V

    .line 125
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist test-api transferTo(Ljava/io/Writer;)J
    .registers 4
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-direct {p0}, Ljava/io/Reader$1;->ensureOpen()V

    .line 132
    const-wide/16 v0, 0x0

    return-wide v0
.end method
