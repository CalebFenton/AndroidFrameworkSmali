.class Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;
.super Ljava/lang/Object;
.source "OCSPReqBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestObject"
.end annotation


# instance fields
.field blacklist certId:Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;

.field blacklist extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V
    .registers 3
    .param p1, "certId"    # Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .param p2, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;->certId:Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;

    .line 43
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist toRequest()Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;->certId:Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    return-object v0
.end method
