.class public Ljavax/net/ssl/CertPathTrustManagerParameters;
.super Ljava/lang/Object;
.source "CertPathTrustManagerParameters.java"

# interfaces
.implements Ljavax/net/ssl/ManagerFactoryParameters;


# instance fields
.field private final param:Ljava/security/cert/CertPathParameters;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertPathParameters;)V
    .locals 1
    .param p1, "parameters"    # Ljava/security/cert/CertPathParameters;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    invoke-interface {p1}, Ljava/security/cert/CertPathParameters;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/security/cert/CertPathParameters;

    #@9
    iput-object v0, p0, Ljavax/net/ssl/CertPathTrustManagerParameters;->param:Ljava/security/cert/CertPathParameters;

    #@b
    .line 39
    return-void
.end method


# virtual methods
.method public getParameters()Ljava/security/cert/CertPathParameters;
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Ljavax/net/ssl/CertPathTrustManagerParameters;->param:Ljava/security/cert/CertPathParameters;

    #@2
    invoke-interface {v0}, Ljava/security/cert/CertPathParameters;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/security/cert/CertPathParameters;

    #@8
    return-object v0
.end method
