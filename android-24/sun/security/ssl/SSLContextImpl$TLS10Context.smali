.class public final Lsun/security/ssl/SSLContextImpl$TLS10Context;
.super Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TLS10Context"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 643
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;-><init>(Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;)V

    #@4
    return-void
.end method
