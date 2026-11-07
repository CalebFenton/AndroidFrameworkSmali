.class public Lsun/net/ftp/impl/DefaultFtpClientProvider;
.super Lsun/net/ftp/FtpClientProvider;
.source "DefaultFtpClientProvider.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lsun/net/ftp/FtpClientProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFtpClient()Lsun/net/ftp/FtpClient;
    .registers 2

    .line 35
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->create()Lsun/net/ftp/FtpClient;

    move-result-object v0

    return-object v0
.end method
