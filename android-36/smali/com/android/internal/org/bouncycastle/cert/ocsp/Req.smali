.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/Req;
.super Ljava/lang/Object;
.source "Req.java"


# instance fields
.field private blacklist req:Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;)V
    .registers 2
    .param p1, "req"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/Req;->req:Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;

    .line 18
    return-void
.end method


# virtual methods
.method public blacklist getCertID()Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .registers 3

    .line 22
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/Req;->req:Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;->getReqCert()Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;)V

    return-object v0
.end method

.method public blacklist getSingleRequestExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/Req;->req:Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;->getSingleRequestExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    return-object v0
.end method
