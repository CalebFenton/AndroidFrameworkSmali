.class public Lsun/net/www/http/HttpCaptureOutputStream;
.super Ljava/io/FilterOutputStream;
.source "HttpCaptureOutputStream.java"


# instance fields
.field private capture:Lsun/net/www/http/HttpCapture;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lsun/net/www/http/HttpCapture;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "cap"    # Lsun/net/www/http/HttpCapture;

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 36
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lsun/net/www/http/HttpCaptureOutputStream;->capture:Lsun/net/www/http/HttpCapture;

    #@6
    .line 40
    iput-object p2, p0, Lsun/net/www/http/HttpCaptureOutputStream;->capture:Lsun/net/www/http/HttpCapture;

    #@8
    .line 38
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lsun/net/www/http/HttpCaptureOutputStream;->capture:Lsun/net/www/http/HttpCapture;

    #@2
    invoke-virtual {v1}, Lsun/net/www/http/HttpCapture;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 71
    :goto_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    #@8
    .line 66
    return-void

    #@9
    .line 69
    :catch_0
    move-exception v0

    #@a
    .local v0, "iOException":Ljava/io/IOException;
    goto :goto_0
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lsun/net/www/http/HttpCaptureOutputStream;->capture:Lsun/net/www/http/HttpCapture;

    #@2
    invoke-virtual {v0, p1}, Lsun/net/www/http/HttpCapture;->sent(I)V

    #@5
    .line 46
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@7
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@a
    .line 44
    return-void
.end method

.method public write([B)V
    .locals 4
    .param p1, "ba"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    const/4 v1, 0x0

    #@1
    array-length v2, p1

    #@2
    :goto_0
    if-ge v1, v2, :cond_0

    #@4
    aget-byte v0, p1, v1

    #@6
    .line 52
    .local v0, "b":B
    iget-object v3, p0, Lsun/net/www/http/HttpCaptureOutputStream;->capture:Lsun/net/www/http/HttpCapture;

    #@8
    invoke-virtual {v3, v0}, Lsun/net/www/http/HttpCapture;->sent(I)V

    #@b
    .line 51
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 54
    .end local v0    # "b":B
    :cond_0
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@10
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    #@13
    .line 50
    return-void
.end method

.method public write([BII)V
    .locals 3
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
    .line 59
    move v0, p2

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    #@3
    .line 60
    iget-object v1, p0, Lsun/net/www/http/HttpCaptureOutputStream;->capture:Lsun/net/www/http/HttpCapture;

    #@5
    aget-byte v2, p1, v0

    #@7
    invoke-virtual {v1, v2}, Lsun/net/www/http/HttpCapture;->sent(I)V

    #@a
    .line 59
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 62
    :cond_0
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@f
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@12
    .line 58
    return-void
.end method
