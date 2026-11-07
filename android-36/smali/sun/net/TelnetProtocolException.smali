.class public Lsun/net/TelnetProtocolException;
.super Ljava/io/IOException;
.source "TelnetProtocolException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x76167df7586dbb2fL


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method
