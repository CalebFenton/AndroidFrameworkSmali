.class public Lsun/net/TelnetProtocolException;
.super Ljava/io/IOException;
.source "TelnetProtocolException.java"


# static fields
.field private static final serialVersionUID:J = 0x76167df7586dbb2fL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 40
    return-void
.end method
