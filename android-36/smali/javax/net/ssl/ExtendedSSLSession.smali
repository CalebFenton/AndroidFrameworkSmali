.class public abstract Ljavax/net/ssl/ExtendedSSLSession;
.super Ljava/lang/Object;
.source "ExtendedSSLSession.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist test-api getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;
.end method

.method public abstract whitelist test-api getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;
.end method

.method public whitelist test-api getRequestedServerNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
