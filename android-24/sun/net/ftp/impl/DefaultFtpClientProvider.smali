.class public Lsun/net/ftp/impl/DefaultFtpClientProvider;
.super Lsun/net/ftp/FtpClientProvider;
.source "DefaultFtpClientProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Lsun/net/ftp/FtpClientProvider;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFtpClient()Lsun/net/ftp/FtpClient;
    .locals 1

    #@0
    .prologue
    .line 35
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->create()Lsun/net/ftp/FtpClient;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
