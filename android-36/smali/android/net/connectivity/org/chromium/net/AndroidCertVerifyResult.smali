.class public Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;
.super Ljava/lang/Object;
.source "AndroidCertVerifyResult.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "net::android"
.end annotation


# instance fields
.field private final blacklist mCertificateChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsIssuedByKnownRoot:Z

.field private final blacklist mStatus:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "status"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;->mStatus:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;->mIsIssuedByKnownRoot:Z

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;->mCertificateChain:Ljava/util/List;

    .line 40
    return-void
.end method

.method public constructor blacklist <init>(IZLjava/util/List;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "isIssuedByKnownRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p3, "certificateChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;->mStatus:I

    .line 32
    iput-boolean p2, p0, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;->mIsIssuedByKnownRoot:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;->mCertificateChain:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public blacklist getCertificateChainEncoded()[[B
    .registers 4

    .line 54
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;->mCertificateChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[B

    .line 56
    .local v0, "verifiedChainArray":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    :try_start_9
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;->mCertificateChain:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 57
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;->mCertificateChain:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_1f
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_9 .. :try_end_1f} :catch_24

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 61
    .end local v1    # "i":I
    :cond_22
    nop

    .line 62
    return-object v0

    .line 59
    :catch_24
    move-exception v1

    .line 60
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    const/4 v2, 0x0

    new-array v2, v2, [[B

    return-object v2
.end method

.method public blacklist getStatus()I
    .registers 2

    .line 44
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;->mStatus:I

    return v0
.end method

.method public blacklist isIssuedByKnownRoot()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;->mIsIssuedByKnownRoot:Z

    return v0
.end method
