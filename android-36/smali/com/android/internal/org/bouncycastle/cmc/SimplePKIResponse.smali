.class public Lcom/android/internal/org/bouncycastle/cmc/SimplePKIResponse;
.super Ljava/lang/Object;
.source "SimplePKIResponse.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Encodable;


# instance fields
.field private final blacklist certificateResponse:Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V
    .registers 6
    .param p1, "signedData"    # Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cmc/CMCException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    :try_start_3
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cmc/SimplePKIResponse;->certificateResponse:Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    :try_end_a
    .catch Lcom/android/internal/org/bouncycastle/cms/CMSException; {:try_start_3 .. :try_end_a} :catch_30

    .line 68
    nop

    .line 70
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cmc/SimplePKIResponse;->certificateResponse:Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getSignerInfos()Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->size()I

    move-result v0

    if-nez v0, :cond_28

    .line 74
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cmc/SimplePKIResponse;->certificateResponse:Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getSignedContent()Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    move-result-object v0

    if-nez v0, :cond_20

    .line 78
    return-void

    .line 76
    :cond_20
    new-instance v0, Lcom/android/internal/org/bouncycastle/cmc/CMCException;

    const-string v1, "malformed response: Signed Content found"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cmc/CMCException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_28
    new-instance v0, Lcom/android/internal/org/bouncycastle/cmc/CMCException;

    const-string v1, "malformed response: SignerInfo structures found"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cmc/CMCException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :catch_30
    move-exception v0

    .line 67
    .local v0, "e":Lcom/android/internal/org/bouncycastle/cms/CMSException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/cmc/CMCException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/cmc/CMCException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "responseEncoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cmc/CMCException;
        }
    .end annotation

    .line 50
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cmc/SimplePKIResponse;->parseBytes([B)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cmc/SimplePKIResponse;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V

    .line 51
    return-void
.end method

.method private static blacklist parseBytes([B)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    .registers 5
    .param p0, "responseEncoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cmc/CMCException;
        }
    .end annotation

    .line 33
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 35
    :catch_9
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/cmc/CMCException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/cmc/CMCException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public blacklist getCRLs()Lcom/android/internal/org/bouncycastle/util/Store;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/org/bouncycastle/util/Store<",
            "Lcom/android/internal/org/bouncycastle/cert/X509CRLHolder;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cmc/SimplePKIResponse;->certificateResponse:Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getCRLs()Lcom/android/internal/org/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCertificates()Lcom/android/internal/org/bouncycastle/util/Store;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/org/bouncycastle/util/Store<",
            "Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cmc/SimplePKIResponse;->certificateResponse:Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getCertificates()Lcom/android/internal/org/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cmc/SimplePKIResponse;->certificateResponse:Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method
