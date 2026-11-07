.class public Ljavax/net/ssl/SSLKeyException;
.super Ljavax/net/ssl/SSLException;
.source "SSLKeyException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x70044fb78e6dbed2L


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method
