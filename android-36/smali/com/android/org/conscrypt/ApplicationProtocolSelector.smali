.class public abstract Lcom/android/org/conscrypt/ApplicationProtocolSelector;
.super Ljava/lang/Object;
.source "ApplicationProtocolSelector.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist-max-o selectApplicationProtocol(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o selectApplicationProtocol(Ljavax/net/ssl/SSLSocket;Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
