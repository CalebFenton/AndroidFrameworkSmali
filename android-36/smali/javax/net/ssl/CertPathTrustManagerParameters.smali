.class public Ljavax/net/ssl/CertPathTrustManagerParameters;
.super Ljava/lang/Object;
.source "CertPathTrustManagerParameters.java"

# interfaces
.implements Ljavax/net/ssl/ManagerFactoryParameters;


# instance fields
.field private final greylist-max-o parameters:Ljava/security/cert/CertPathParameters;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/security/cert/CertPathParameters;)V
    .registers 3
    .param p1, "parameters"    # Ljava/security/cert/CertPathParameters;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-interface {p1}, Ljava/security/cert/CertPathParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertPathParameters;

    iput-object v0, p0, Ljavax/net/ssl/CertPathTrustManagerParameters;->parameters:Ljava/security/cert/CertPathParameters;

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist test-api getParameters()Ljava/security/cert/CertPathParameters;
    .registers 2

    .line 68
    iget-object v0, p0, Ljavax/net/ssl/CertPathTrustManagerParameters;->parameters:Ljava/security/cert/CertPathParameters;

    invoke-interface {v0}, Ljava/security/cert/CertPathParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertPathParameters;

    return-object v0
.end method
