.class final Lcom/android/org/conscrypt/ExternalSession;
.super Ljava/lang/Object;
.source "ExternalSession.java"

# interfaces
.implements Lcom/android/org/conscrypt/ConscryptSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ExternalSession$Provider;
    }
.end annotation


# instance fields
.field private final blacklist provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

.field private final blacklist values:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V
    .registers 4
    .param p1, "provider"    # Lcom/android/org/conscrypt/ExternalSession$Provider;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->values:Ljava/util/HashMap;

    .line 54
    iput-object p1, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist test-api getApplicationBufferSize()I
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getApplicationBufferSize()I

    move-result v0

    return v0
.end method

.method public blacklist getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getCipherSuite()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getCreationTime()J
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getId()[B
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getId()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLastAccessedTime()J
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getLastAccessedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPacketBufferSize()I
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getPacketBufferSize()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ExternalSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPeerHost()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPeerPort()I
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getPeerPrincipal()Ljava/security/Principal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPeerSignedCertificateTimestamp()[B
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerSignedCertificateTimestamp()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getProtocol()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRequestedServerName()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getRequestedServerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

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

    .line 64
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getStatusResponses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 167
    if-eqz p1, :cond_9

    .line 170
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 168
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getValueNames()[Ljava/lang/String;
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->values:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api invalidate()V
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->invalidate()V

    .line 95
    return-void
.end method

.method public whitelist test-api isValid()Z
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->isValid()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 180
    invoke-virtual {p0, p0, p1, p2}, Lcom/android/org/conscrypt/ExternalSession;->putValue(Ljavax/net/ssl/SSLSession;Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method blacklist putValue(Ljavax/net/ssl/SSLSession;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 184
    if-eqz p2, :cond_29

    if-eqz p3, :cond_29

    .line 187
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 188
    .local v0, "old":Ljava/lang/Object;
    instance-of v1, p3, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_19

    .line 189
    move-object v1, p3

    check-cast v1, Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v2, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v2, p1, p2}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    .line 190
    invoke-interface {v1, v2}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 192
    :cond_19
    instance-of v1, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_28

    .line 193
    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v2, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v2, p1, p2}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    .line 194
    invoke-interface {v1, v2}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 196
    :cond_28
    return-void

    .line 185
    .end local v0    # "old":Ljava/lang/Object;
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api removeValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 200
    invoke-virtual {p0, p0, p1}, Lcom/android/org/conscrypt/ExternalSession;->removeValue(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method blacklist removeValue(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V
    .registers 6
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;
    .param p2, "name"    # Ljava/lang/String;

    .line 204
    if-eqz p2, :cond_18

    .line 207
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    .local v0, "old":Ljava/lang/Object;
    instance-of v1, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_17

    .line 209
    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/SSLSessionBindingListener;

    .line 210
    .local v1, "listener":Ljavax/net/ssl/SSLSessionBindingListener;
    new-instance v2, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v2, p1, p2}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 212
    .end local v1    # "listener":Ljavax/net/ssl/SSLSessionBindingListener;
    :cond_17
    return-void

    .line 205
    .end local v0    # "old":Ljava/lang/Object;
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
