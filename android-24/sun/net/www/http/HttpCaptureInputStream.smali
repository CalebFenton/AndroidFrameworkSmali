.class public Lsun/net/www/http/HttpCaptureInputStream;
.super Ljava/io/FilterInputStream;
.source "HttpCaptureInputStream.java"


# instance fields
.field private capture:Lsun/net/www/http/HttpCapture;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lsun/net/www/http/HttpCapture;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "cap"    # Lsun/net/www/http/HttpCapture;

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    .line 36
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lsun/net/www/http/HttpCaptureInputStream;->capture:Lsun/net/www/http/HttpCapture;

    #@6
    .line 40
    iput-object p2, p0, Lsun/net/www/http/HttpCaptureInputStream;->capture:Lsun/net/www/http/HttpCapture;

    #@8
    .line 38
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lsun/net/www/http/HttpCaptureInputStream;->capture:Lsun/net/www/http/HttpCapture;

    #@2
    invoke-virtual {v1}, Lsun/net/www/http/HttpCapture;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 56
    :goto_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    #@8
    .line 51
    return-void

    #@9
    .line 54
    :catch_0
    move-exception v0

    #@a
    .local v0, "iOException":Ljava/io/IOException;
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
    .line 45
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    #@3
    move-result v0

    #@4
    .line 46
    .local v0, "i":I
    iget-object v1, p0, Lsun/net/www/http/HttpCaptureInputStream;->capture:Lsun/net/www/http/HttpCapture;

    #@6
    invoke-virtual {v1, v0}, Lsun/net/www/http/HttpCapture;->received(I)V

    #@9
    .line 47
    return v0
.end method

.method public read([B)I
    .locals 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    #@3
    move-result v1

    #@4
    .line 62
    .local v1, "ret":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@7
    .line 63
    iget-object v2, p0, Lsun/net/www/http/HttpCaptureInputStream;->capture:Lsun/net/www/http/HttpCapture;

    #@9
    aget-byte v3, p1, v0

    #@b
    invoke-virtual {v2, v3}, Lsun/net/www/http/HttpCapture;->received(I)V

    #@e
    .line 62
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 65
    :cond_0
    return v1
.end method

.method public read([BII)I
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
    .line 70
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    #@3
    move-result v1

    #@4
    .line 71
    .local v1, "ret":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@7
    .line 72
    iget-object v2, p0, Lsun/net/www/http/HttpCaptureInputStream;->capture:Lsun/net/www/http/HttpCapture;

    #@9
    add-int v3, p2, v0

    #@b
    aget-byte v3, p1, v3

    #@d
    invoke-virtual {v2, v3}, Lsun/net/www/http/HttpCapture;->received(I)V

    #@10
    .line 71
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 74
    :cond_0
    return v1
.end method
