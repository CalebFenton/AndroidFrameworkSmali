.class public Lsun/net/ftp/FtpLoginException;
.super Ljava/io/IOException;
.source "FtpLoginException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x1ec87ef4131fd120L


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method
