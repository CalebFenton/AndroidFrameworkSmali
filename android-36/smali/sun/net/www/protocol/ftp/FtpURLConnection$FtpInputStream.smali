.class public Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;
.super Ljava/io/FilterInputStream;
.source "FtpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/ftp/FtpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FtpInputStream"
.end annotation


# instance fields
.field blacklist ftp:Lsun/net/ftp/FtpClient;


# direct methods
.method constructor blacklist <init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V
    .registers 5
    .param p1, "this$0"    # Lsun/net/www/protocol/ftp/FtpURLConnection;
    .param p2, "cl"    # Lsun/net/ftp/FtpClient;
    .param p3, "fd"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 128
    iput-object p2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;->ftp:Lsun/net/ftp/FtpClient;

    .line 129
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 134
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;->ftp:Lsun/net/ftp/FtpClient;

    if-eqz v0, :cond_c

    .line 135
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v0}, Lsun/net/ftp/FtpClient;->close()V

    .line 137
    :cond_c
    return-void
.end method
