.class public final Lcom/android/org/conscrypt/SSLNullSession;
.super Ljava/lang/Object;
.source "SSLNullSession.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/SSLNullSession$DefaultHolder;
    }
.end annotation


# instance fields
.field creationTime:J

.field lastAccessedTime:J

.field private final values:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/conscrypt/SSLNullSession;->values:Ljava/util/HashMap;

    #@a
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@d
    move-result-wide v0

    #@e
    iput-wide v0, p0, Lcom/android/org/conscrypt/SSLNullSession;->creationTime:J

    #@10
    .line 53
    iget-wide v0, p0, Lcom/android/org/conscrypt/SSLNullSession;->creationTime:J

    #@12
    iput-wide v0, p0, Lcom/android/org/conscrypt/SSLNullSession;->lastAccessedTime:J

    #@14
    .line 51
    return-void
.end method

.method public static getNullSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    #@0
    .prologue
    .line 48
    sget-object v0, Lcom/android/org/conscrypt/SSLNullSession$DefaultHolder;->NULL_SESSION:Lcom/android/org/conscrypt/SSLNullSession;

    #@2
    return-object v0
.end method


# virtual methods
.method public getApplicationBufferSize()I
    .locals 1

    #@0
    .prologue
    .line 58
    const/16 v0, 0x4000

    #@2
    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 63
    const-string/jumbo v0, "SSL_NULL_WITH_NULL_NULL"

    #@3
    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    #@0
    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/org/conscrypt/SSLNullSession;->creationTime:J

    #@2
    return-wide v0
.end method

.method public getId()[B
    .locals 1

    #@0
    .prologue
    .line 73
    sget-object v0, Lcom/android/org/conscrypt/util/EmptyArray;->BYTE:[B

    #@2
    return-object v0
.end method

.method public getLastAccessedTime()J
    .locals 2

    #@0
    .prologue
    .line 78
    iget-wide v0, p0, Lcom/android/org/conscrypt/SSLNullSession;->lastAccessedTime:J

    #@2
    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    .line 88
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getPacketBufferSize()I
    .locals 1

    #@0
    .prologue
    .line 93
    const/16 v0, 0x4805

    #@2
    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@2
    const-string/jumbo v1, "No peer certificate"

    #@5
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 104
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@2
    const-string/jumbo v1, "No peer certificate"

    #@5
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 109
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    #@0
    .prologue
    .line 114
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@2
    const-string/jumbo v1, "No peer certificate"

    #@5
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 124
    const-string/jumbo v0, "NONE"

    #@3
    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    #@0
    .prologue
    .line 129
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 134
    if-nez p1, :cond_0

    #@2
    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLNullSession;->values:Ljava/util/HashMap;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLNullSession;->values:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/org/conscrypt/SSLNullSession;->values:Ljava/util/HashMap;

    #@8
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    #@b
    move-result v1

    #@c
    new-array v1, v1, [Ljava/lang/String;

    #@e
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, [Ljava/lang/String;

    #@14
    return-object v0
.end method

.method public invalidate()V
    .locals 0

    #@0
    .prologue
    .line 146
    return-void
.end method

.method public isValid()Z
    .locals 1

    #@0
    .prologue
    .line 151
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 156
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 157
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v2, "name == null || value == null"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 159
    :cond_1
    iget-object v1, p0, Lcom/android/org/conscrypt/SSLNullSession;->values:Ljava/util/HashMap;

    #@f
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 160
    .local v0, "old":Ljava/lang/Object;
    instance-of v1, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 161
    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    #@19
    .end local p2    # "value":Ljava/lang/Object;
    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    #@1b
    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    #@1e
    invoke-interface {p2, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    #@21
    .line 163
    :cond_2
    instance-of v1, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    #@23
    if-eqz v1, :cond_3

    #@25
    .line 164
    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    #@27
    .end local v0    # "old":Ljava/lang/Object;
    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    #@29
    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    #@2c
    invoke-interface {v0, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    #@2f
    .line 155
    :cond_3
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 171
    if-nez p1, :cond_0

    #@2
    .line 172
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "name == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 174
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/SSLNullSession;->values:Ljava/util/HashMap;

    #@d
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    .line 175
    .local v1, "old":Ljava/lang/Object;
    instance-of v2, v1, Ljavax/net/ssl/SSLSessionBindingListener;

    #@13
    if-eqz v2, :cond_1

    #@15
    move-object v0, v1

    #@16
    .line 176
    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    #@18
    .line 177
    .local v0, "listener":Ljavax/net/ssl/SSLSessionBindingListener;
    new-instance v2, Ljavax/net/ssl/SSLSessionBindingEvent;

    #@1a
    invoke-direct {v2, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    #@1d
    invoke-interface {v0, v2}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    #@20
    .line 170
    .end local v0    # "listener":Ljavax/net/ssl/SSLSessionBindingListener;
    :cond_1
    return-void
.end method
