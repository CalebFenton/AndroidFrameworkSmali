.class public Landroid/net/http/SslCertificate$DName;
.super Ljava/lang/Object;
.source "SslCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/SslCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DName"
.end annotation


# instance fields
.field private greylist-max-o mCName:Ljava/lang/String;

.field private greylist-max-o mDName:Ljava/lang/String;

.field private greylist-max-o mOName:Ljava/lang/String;

.field private greylist-max-o mUName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/net/http/SslCertificate;Ljava/lang/String;)V
    .registers 9
    .param p1, "this$0"    # Landroid/net/http/SslCertificate;
    .param p2, "dName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    if-eqz p2, :cond_6a

    .line 391
    iput-object p2, p0, Landroid/net/http/SslCertificate$DName;->mDName:Ljava/lang/String;

    .line 393
    :try_start_7
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, "x509Name":Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->getValues()Ljava/util/Vector;

    move-result-object v1

    .line 396
    .local v1, "val":Ljava/util/Vector;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->getOIDs()Ljava/util/Vector;

    move-result-object v2

    .line 398
    .local v2, "oid":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_68

    .line 399
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 400
    iget-object v4, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    if-nez v4, :cond_65

    .line 401
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    goto :goto_65

    .line 406
    :cond_34
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 407
    iget-object v4, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    if-nez v4, :cond_4d

    .line 408
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    .line 409
    goto :goto_65

    .line 413
    :cond_4d
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 414
    iget-object v4, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;

    if-nez v4, :cond_65

    .line 415
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_65} :catch_69

    .line 398
    :cond_65
    :goto_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 422
    .end local v0    # "x509Name":Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;
    .end local v1    # "val":Ljava/util/Vector;
    .end local v2    # "oid":Ljava/util/Vector;
    .end local v3    # "i":I
    :cond_68
    goto :goto_6a

    .line 420
    :catch_69
    move-exception v0

    .line 424
    :cond_6a
    :goto_6a
    return-void
.end method


# virtual methods
.method public whitelist getCName()Ljava/lang/String;
    .registers 2

    .line 437
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    return-object v0
.end method

.method public whitelist getDName()Ljava/lang/String;
    .registers 2

    .line 430
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mDName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mDName:Ljava/lang/String;

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    return-object v0
.end method

.method public whitelist getOName()Ljava/lang/String;
    .registers 2

    .line 444
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    return-object v0
.end method

.method public whitelist getUName()Ljava/lang/String;
    .registers 2

    .line 451
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    return-object v0
.end method
