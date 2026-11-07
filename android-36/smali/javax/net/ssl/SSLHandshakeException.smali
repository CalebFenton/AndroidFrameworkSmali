.class public Ljavax/net/ssl/SSLHandshakeException;
.super Ljavax/net/ssl/SSLException;
.source "SSLHandshakeException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x460692526072c36aL


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method
