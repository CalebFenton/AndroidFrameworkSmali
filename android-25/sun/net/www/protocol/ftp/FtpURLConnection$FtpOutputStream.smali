.class public Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;
.super Ljava/io/FilterOutputStream;
.source "FtpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/ftp/FtpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FtpOutputStream"
.end annotation


# instance fields
.field ftp:Lsun/net/ftp/FtpClient;

.field final synthetic this$0:Lsun/net/www/protocol/ftp/FtpURLConnection;


# direct methods
.method constructor <init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lsun/net/www/protocol/ftp/FtpURLConnection;
    .param p2, "cl"    # Lsun/net/ftp/FtpClient;
    .param p3, "fd"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 146
    iput-object p1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;->this$0:Lsun/net/www/protocol/ftp/FtpURLConnection;

    #@2
    .line 147
    invoke-direct {p0, p3}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@5
    .line 148
    iput-object p2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;->ftp:Lsun/net/ftp/FtpClient;

    #@7
    .line 146
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    #@3
    .line 154
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;->ftp:Lsun/net/ftp/FtpClient;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 155
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;->ftp:Lsun/net/ftp/FtpClient;

    #@9
    invoke-virtual {v0}, Lsun/net/ftp/FtpClient;->close()V

    #@c
    .line 152
    :cond_0
    return-void
.end method
