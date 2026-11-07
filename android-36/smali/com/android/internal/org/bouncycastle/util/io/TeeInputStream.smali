.class public Lcom/android/internal/org/bouncycastle/util/io/TeeInputStream;
.super Ljava/io/InputStream;
.source "TeeInputStream.java"


# instance fields
.field private final blacklist input:Ljava/io/InputStream;

.field private final blacklist output:Ljava/io/OutputStream;


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;

    .line 25
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/util/io/TeeInputStream;->input:Ljava/io/InputStream;

    .line 27
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/util/io/TeeInputStream;->output:Ljava/io/OutputStream;

    .line 28
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/io/TeeInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/io/TeeInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 71
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/io/TeeInputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 72
    return-void
.end method

.method public blacklist getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/io/TeeInputStream;->output:Ljava/io/OutputStream;

    return-object v0
.end method

.method public whitelist test-api read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/io/TeeInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 59
    .local v0, "i":I
    if-ltz v0, :cond_d

    .line 61
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/io/TeeInputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 64
    :cond_d
    return v0
.end method

.method public whitelist test-api read([B)I
    .registers 4
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/util/io/TeeInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/io/TeeInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 46
    .local v0, "i":I
    if-lez v0, :cond_d

    .line 48
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/io/TeeInputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 51
    :cond_d
    return v0
.end method
