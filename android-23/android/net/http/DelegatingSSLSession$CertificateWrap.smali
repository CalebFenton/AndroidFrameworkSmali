.class public Landroid/net/http/DelegatingSSLSession$CertificateWrap;
.super Landroid/net/http/DelegatingSSLSession;
.source "DelegatingSSLSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/DelegatingSSLSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CertificateWrap"
.end annotation


# instance fields
.field private final mCertificate:Ljava/security/cert/Certificate;


# direct methods
.method public constructor <init>(Ljava/security/cert/Certificate;)V
    .locals 0
    .param p1, "certificate"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Landroid/net/http/DelegatingSSLSession;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Landroid/net/http/DelegatingSSLSession$CertificateWrap;->mCertificate:Ljava/security/cert/Certificate;

    #@5
    .line 40
    return-void
.end method


# virtual methods
.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/security/cert/Certificate;

    #@3
    iget-object v1, p0, Landroid/net/http/DelegatingSSLSession$CertificateWrap;->mCertificate:Ljava/security/cert/Certificate;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    return-object v0
.end method
