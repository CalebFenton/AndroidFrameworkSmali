.class final Lsun/net/ftp/FtpClientProvider$1;
.super Ljava/lang/Object;
.source "FtpClientProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/ftp/FtpClientProvider;->provider()Lsun/net/ftp/FtpClientProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 146
    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->-wrap1()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 147
    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->-get0()Lsun/net/ftp/FtpClientProvider;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 149
    :cond_0
    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->-wrap0()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 150
    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->-get0()Lsun/net/ftp/FtpClientProvider;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 152
    :cond_1
    new-instance v0, Lsun/net/ftp/impl/DefaultFtpClientProvider;

    #@18
    invoke-direct {v0}, Lsun/net/ftp/impl/DefaultFtpClientProvider;-><init>()V

    #@1b
    invoke-static {v0}, Lsun/net/ftp/FtpClientProvider;->-set0(Lsun/net/ftp/FtpClientProvider;)Lsun/net/ftp/FtpClientProvider;

    #@1e
    .line 153
    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->-get0()Lsun/net/ftp/FtpClientProvider;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method
