.class public Ljavax/net/ssl/SSLKeyException;
.super Ljavax/net/ssl/SSLException;
.source "SSLKeyException.java"


# static fields
.field private static final serialVersionUID:J = -0x70044fb78e6dbed2L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@3
    .line 33
    return-void
.end method
