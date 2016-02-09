.class public Ljavax/net/ssl/SSLProtocolException;
.super Ljavax/net/ssl/SSLException;
.source "SSLProtocolException.java"


# static fields
.field private static final serialVersionUID:J = 0x4b90c3a533ed3ad0L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@3
    .line 34
    return-void
.end method
