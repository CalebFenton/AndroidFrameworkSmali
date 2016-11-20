.class public Lsun/net/ftp/FtpProtocolException;
.super Ljava/lang/Exception;
.source "FtpProtocolException.java"


# static fields
.field private static final serialVersionUID:J = 0x52f6656c15bdca1eL


# instance fields
.field private final code:Lsun/net/ftp/FtpReplyCode;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "detail"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 46
    sget-object v0, Lsun/net/ftp/FtpReplyCode;->UNKNOWN_ERROR:Lsun/net/ftp/FtpReplyCode;

    #@5
    iput-object v0, p0, Lsun/net/ftp/FtpProtocolException;->code:Lsun/net/ftp/FtpReplyCode;

    #@7
    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V
    .locals 0
    .param p1, "detail"    # Ljava/lang/String;
    .param p2, "code"    # Lsun/net/ftp/FtpReplyCode;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 58
    iput-object p2, p0, Lsun/net/ftp/FtpProtocolException;->code:Lsun/net/ftp/FtpReplyCode;

    #@5
    .line 56
    return-void
.end method


# virtual methods
.method public getReplyCode()Lsun/net/ftp/FtpReplyCode;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lsun/net/ftp/FtpProtocolException;->code:Lsun/net/ftp/FtpReplyCode;

    #@2
    return-object v0
.end method
