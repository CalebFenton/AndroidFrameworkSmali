.class Lcom/android/org/conscrypt/NativeSslSession$Impl$1;
.super Ljava/lang/Object;
.source "NativeSslSession.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/NativeSslSession$Impl;->toSSLSession()Ljavax/net/ssl/SSLSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/NativeSslSession$Impl;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/NativeSslSession$Impl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/org/conscrypt/NativeSslSession$Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 354
    iput-object p1, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl$1;->this$0:Lcom/android/org/conscrypt/NativeSslSession$Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getApplicationBufferSize()I
    .registers 2

    .line 460
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getCipherSuite()Ljava/lang/String;
    .registers 2

    .line 362
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl$1;->this$0:Lcom/android/org/conscrypt/NativeSslSession$Impl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSslSession$Impl;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getCreationTime()J
    .registers 3

    .line 382
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl$1;->this$0:Lcom/android/org/conscrypt/NativeSslSession$Impl;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSslSession$Impl;->-$$Nest$mgetCreationTime(Lcom/android/org/conscrypt/NativeSslSession$Impl;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getId()[B
    .registers 2

    .line 357
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl$1;->this$0:Lcom/android/org/conscrypt/NativeSslSession$Impl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSslSession$Impl;->getId()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLastAccessedTime()J
    .registers 2

    .line 399
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .line 434
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    .line 450
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getPacketBufferSize()I
    .registers 2

    .line 455
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 2

    .line 440
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .line 429
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getPeerHost()Ljava/lang/String;
    .registers 2

    .line 372
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl$1;->this$0:Lcom/android/org/conscrypt/NativeSslSession$Impl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSslSession$Impl;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPeerPort()I
    .registers 2

    .line 377
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl$1;->this$0:Lcom/android/org/conscrypt/NativeSslSession$Impl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSslSession$Impl;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getPeerPrincipal()Ljava/security/Principal;
    .registers 2

    .line 445
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getProtocol()Ljava/lang/String;
    .registers 2

    .line 367
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl$1;->this$0:Lcom/android/org/conscrypt/NativeSslSession$Impl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSslSession$Impl;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .line 394
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 414
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getValueNames()[Ljava/lang/String;
    .registers 2

    .line 424
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api invalidate()V
    .registers 2

    .line 404
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api isValid()Z
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl$1;->this$0:Lcom/android/org/conscrypt/NativeSslSession$Impl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSslSession$Impl;->isValid()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .line 409
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api removeValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 419
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
