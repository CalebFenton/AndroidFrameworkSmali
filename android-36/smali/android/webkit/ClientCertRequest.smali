.class public abstract Landroid/webkit/ClientCertRequest;
.super Ljava/lang/Object;
.source "ClientCertRequest.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist cancel()V
.end method

.method public abstract whitelist getHost()Ljava/lang/String;
.end method

.method public abstract whitelist getKeyTypes()[Ljava/lang/String;
.end method

.method public abstract whitelist getPort()I
.end method

.method public abstract whitelist getPrincipals()[Ljava/security/Principal;
.end method

.method public abstract whitelist ignore()V
.end method

.method public abstract whitelist proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
.end method
