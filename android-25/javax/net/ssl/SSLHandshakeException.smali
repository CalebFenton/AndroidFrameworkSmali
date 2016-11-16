.class public Ljavax/net/ssl/SSLHandshakeException;
.super Ljavax/net/ssl/SSLException;
.source "SSLHandshakeException.java"


# static fields
.field private static final serialVersionUID:J = -0x460692526072c36aL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@3
    .line 48
    return-void
.end method
