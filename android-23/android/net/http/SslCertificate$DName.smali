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
.field private mCName:Ljava/lang/String;

.field private mDName:Ljava/lang/String;

.field private mOName:Ljava/lang/String;

.field private mUName:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/http/SslCertificate;


# direct methods
.method public constructor <init>(Landroid/net/http/SslCertificate;Ljava/lang/String;)V
    .locals 7
    .param p1, "this$0"    # Landroid/net/http/SslCertificate;
    .param p2, "dName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 375
    iput-object p1, p0, Landroid/net/http/SslCertificate$DName;->this$0:Landroid/net/http/SslCertificate;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 376
    if-eqz p2, :cond_2

    #@7
    .line 377
    iput-object p2, p0, Landroid/net/http/SslCertificate$DName;->mDName:Ljava/lang/String;

    #@9
    .line 379
    :try_start_0
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@b
    invoke-direct {v4, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/lang/String;)V

    #@e
    .line 381
    .local v4, "x509Name":Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getValues()Ljava/util/Vector;

    #@11
    move-result-object v3

    #@12
    .line 382
    .local v3, "val":Ljava/util/Vector;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getOIDs()Ljava/util/Vector;

    #@15
    move-result-object v2

    #@16
    .line 384
    .local v2, "oid":Ljava/util/Vector;
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@1a
    move-result v5

    #@1b
    if-ge v1, v5, :cond_2

    #@1d
    .line 385
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@20
    move-result-object v5

    #@21
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@23
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_1

    #@29
    .line 386
    iget-object v5, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    #@2b
    if-nez v5, :cond_0

    #@2d
    .line 387
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Ljava/lang/String;

    #@33
    iput-object v5, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    #@35
    .line 384
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_0

    #@38
    .line 392
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@3b
    move-result-object v5

    #@3c
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v5

    #@42
    if-eqz v5, :cond_3

    #@44
    .line 393
    iget-object v5, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    #@46
    if-nez v5, :cond_3

    #@48
    .line 394
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@4b
    move-result-object v5

    #@4c
    check-cast v5, Ljava/lang/String;

    #@4e
    iput-object v5, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    #@50
    goto :goto_1

    #@51
    .line 406
    .end local v1    # "i":I
    .end local v2    # "oid":Ljava/util/Vector;
    .end local v3    # "val":Ljava/util/Vector;
    .end local v4    # "x509Name":Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    :catch_0
    move-exception v0

    #@52
    .line 375
    :cond_2
    return-void

    #@53
    .line 399
    .restart local v1    # "i":I
    .restart local v2    # "oid":Ljava/util/Vector;
    .restart local v3    # "val":Ljava/util/Vector;
    .restart local v4    # "x509Name":Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    :cond_3
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@56
    move-result-object v5

    #@57
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@59
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v5

    #@5d
    if-eqz v5, :cond_0

    #@5f
    .line 400
    iget-object v5, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;

    #@61
    if-nez v5, :cond_0

    #@63
    .line 401
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@66
    move-result-object v5

    #@67
    check-cast v5, Ljava/lang/String;

    #@69
    iput-object v5, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@6b
    goto :goto_1
.end method


# virtual methods
.method public getCName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 423
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    const-string/jumbo v0, ""

    #@a
    goto :goto_0
.end method

.method public getDName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mDName:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mDName:Ljava/lang/String;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    const-string/jumbo v0, ""

    #@a
    goto :goto_0
.end method

.method public getOName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 430
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    const-string/jumbo v0, ""

    #@a
    goto :goto_0
.end method

.method public getUName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 437
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    const-string/jumbo v0, ""

    #@a
    goto :goto_0
.end method
