.class public Lsun/net/ftp/FtpLoginException;
.super Ljava/io/IOException;
.source "FtpLoginException.java"


# static fields
.field private static final serialVersionUID:J = 0x1ec87ef4131fd120L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 39
    return-void
.end method
