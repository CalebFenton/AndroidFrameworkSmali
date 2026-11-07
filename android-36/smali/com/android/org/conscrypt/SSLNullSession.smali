.class final Lcom/android/org/conscrypt/SSLNullSession;
.super Ljava/lang/Object;
.source "SSLNullSession.java"

# interfaces
.implements Lcom/android/org/conscrypt/ConscryptSession;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/SSLNullSession$DefaultHolder;
    }
.end annotation


# static fields
.field static final blacklist INVALID_CIPHER:Ljava/lang/String; = "SSL_NULL_WITH_NULL_NULL"


# instance fields
.field private blacklist creationTime:J

.field private blacklist lastAccessedTime:J


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/SSLNullSession;->creationTime:J

    .line 56
    iget-wide v0, p0, Lcom/android/org/conscrypt/SSLNullSession;->creationTime:J

    iput-wide v0, p0, Lcom/android/org/conscrypt/SSLNullSession;->lastAccessedTime:J

    .line 57
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/conscrypt/SSLNullSession-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/org/conscrypt/SSLNullSession;-><init>()V

    return-void
.end method

.method static blacklist getNullSession()Lcom/android/org/conscrypt/ConscryptSession;
    .registers 1

    .line 51
    sget-object v0, Lcom/android/org/conscrypt/SSLNullSession$DefaultHolder;->NULL_SESSION:Lcom/android/org/conscrypt/SSLNullSession;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api getApplicationBufferSize()I
    .registers 2

    .line 76
    const/16 v0, 0x4000

    return v0
.end method

.method public blacklist getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getCipherSuite()Ljava/lang/String;
    .registers 2

    .line 86
    const-string v0, "SSL_NULL_WITH_NULL_NULL"

    return-object v0
.end method

.method public whitelist test-api getCreationTime()J
    .registers 3

    .line 91
    iget-wide v0, p0, Lcom/android/org/conscrypt/SSLNullSession;->creationTime:J

    return-wide v0
.end method

.method public whitelist test-api getId()[B
    .registers 2

    .line 96
    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    return-object v0
.end method

.method public whitelist test-api getLastAccessedTime()J
    .registers 3

    .line 101
    iget-wide v0, p0, Lcom/android/org/conscrypt/SSLNullSession;->lastAccessedTime:J

    return-wide v0
.end method

.method public whitelist test-api getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getPacketBufferSize()I
    .registers 2

    .line 116
    const/16 v0, 0x4145

    return v0
.end method

.method public whitelist test-api getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 123
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLNullSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 128
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getPeerHost()Ljava/lang/String;
    .registers 2

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getPeerPort()I
    .registers 2

    .line 138
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api getPeerPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 143
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getPeerSignedCertificateTimestamp()[B
    .registers 2

    .line 71
    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    return-object v0
.end method

.method public whitelist test-api getProtocol()Ljava/lang/String;
    .registers 2

    .line 148
    const-string v0, "NONE"

    return-object v0
.end method

.method public blacklist getRequestedServerName()Ljava/lang/String;
    .registers 2

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStatusResponses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "All calls to this method should be intercepted by ExternalSession."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getValueNames()[Ljava/lang/String;
    .registers 3

    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "All calls to this method should be intercepted by ExternalSession."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api invalidate()V
    .registers 1

    .line 170
    return-void
.end method

.method public whitelist test-api isValid()Z
    .registers 2

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 179
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "All calls to this method should be intercepted by ExternalSession."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api removeValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "All calls to this method should be intercepted by ExternalSession."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
