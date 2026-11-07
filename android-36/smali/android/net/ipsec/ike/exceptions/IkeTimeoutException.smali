.class public final Landroid/net/ipsec/ike/exceptions/IkeTimeoutException;
.super Ljava/io/IOException;
.source "IkeTimeoutException.java"


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method
