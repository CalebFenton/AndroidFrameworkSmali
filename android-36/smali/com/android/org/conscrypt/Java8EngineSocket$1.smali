.class Lcom/android/org/conscrypt/Java8EngineSocket$1;
.super Lcom/android/org/conscrypt/ApplicationProtocolSelector;
.source "Java8EngineSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/Java8EngineSocket;->toApplicationProtocolSelector(Ljava/util/function/BiFunction;)Lcom/android/org/conscrypt/ApplicationProtocolSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$selector:Ljava/util/function/BiFunction;


# direct methods
.method constructor blacklist <init>(Ljava/util/function/BiFunction;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/android/org/conscrypt/Java8EngineSocket$1;->val$selector:Ljava/util/function/BiFunction;

    invoke-direct {p0}, Lcom/android/org/conscrypt/ApplicationProtocolSelector;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist selectApplicationProtocol(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .param p1, "socket"    # Ljavax/net/ssl/SSLEngine;
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

    .line 84
    .local p2, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist selectApplicationProtocol(Ljavax/net/ssl/SSLSocket;Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
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

    .line 89
    .local p2, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8EngineSocket$1;->val$selector:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
