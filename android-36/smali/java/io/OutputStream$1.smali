.class Ljava/io/OutputStream$1;
.super Ljava/io/OutputStream;
.source "OutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/OutputStream;->nullOutputStream()Ljava/io/OutputStream;
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

    .line 72
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method private blacklist ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-boolean v0, p0, Ljava/io/OutputStream$1;->closed:Z

    if-nez v0, :cond_5

    .line 79
    return-void

    .line 77
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/OutputStream$1;->closed:Z

    .line 95
    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/io/OutputStream$1;->ensureOpen()V

    .line 84
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 89
    invoke-direct {p0}, Ljava/io/OutputStream$1;->ensureOpen()V

    .line 90
    return-void
.end method
