.class public Ljava/security/cert/X509CRLSelector;
.super Ljava/lang/Object;
.source "X509CRLSelector.java"

# interfaces
.implements Ljava/security/cert/CRLSelector;


# instance fields
.field private certificateChecking:Ljava/security/cert/X509Certificate;

.field private dateAndTime:J

.field private issuerNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private issuerPrincipals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field

.field private maxCRL:Ljava/math/BigInteger;

.field private minCRL:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    const-wide/16 v0, -0x1

    #@5
    iput-wide v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    #@7
    .line 59
    return-void
.end method


# virtual methods
.method public addIssuer(Ljavax/security/auth/x500/X500Principal;)V
    .locals 6
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 138
    if-nez p1, :cond_0

    #@2
    .line 139
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v4, "issuer == null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 141
    :cond_0
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@d
    if-nez v3, :cond_1

    #@f
    .line 142
    new-instance v3, Ljava/util/ArrayList;

    #@11
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@16
    .line 144
    :cond_1
    const-string/jumbo v3, "CANONICAL"

    #@19
    invoke-virtual {p1, v3}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 145
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@22
    move-result v3

    #@23
    if-nez v3, :cond_2

    #@25
    .line 146
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 148
    :cond_2
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    #@2c
    if-nez v3, :cond_3

    #@2e
    .line 149
    new-instance v3, Ljava/util/ArrayList;

    #@30
    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@35
    move-result v4

    #@36
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@39
    iput-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    #@3b
    .line 152
    :cond_3
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@40
    move-result v3

    #@41
    add-int/lit8 v2, v3, -0x1

    #@43
    .line 153
    .local v2, "size":I
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@48
    move-result v0

    #@49
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_4

    #@4b
    .line 154
    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    #@4d
    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    #@4f
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@51
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v3

    #@55
    check-cast v3, Ljava/lang/String;

    #@57
    invoke-direct {v5, v3}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    #@5a
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5d
    .line 153
    add-int/lit8 v0, v0, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 156
    :cond_4
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    #@62
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@65
    .line 137
    return-void
.end method

.method public addIssuerName(Ljava/lang/String;)V
    .locals 3
    .param p1, "iss_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 174
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@b
    .line 177
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 178
    const-string/jumbo p1, ""

    #@10
    .line 181
    :cond_1
    new-instance v1, Lorg/apache/harmony/security/x501/Name;

    #@12
    invoke-direct {v1, p1}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    #@15
    const-string/jumbo v2, "CANONICAL"

    #@18
    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 182
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_2

    #@24
    .line 183
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    .line 172
    :cond_2
    return-void
.end method

.method public addIssuerName([B)V
    .locals 3
    .param p1, "iss_name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    if-nez p1, :cond_0

    #@2
    .line 200
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "iss_name == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 202
    :cond_0
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@d
    if-nez v1, :cond_1

    #@f
    .line 203
    new-instance v1, Ljava/util/ArrayList;

    #@11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@16
    .line 205
    :cond_1
    new-instance v1, Lorg/apache/harmony/security/x501/Name;

    #@18
    invoke-direct {v1, p1}, Lorg/apache/harmony/security/x501/Name;-><init>([B)V

    #@1b
    const-string/jumbo v2, "CANONICAL"

    #@1e
    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 206
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_2

    #@2a
    .line 207
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f
    .line 198
    :cond_2
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 455
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/security/cert/X509CRLSelector;

    #@6
    .line 456
    .local v1, "result":Ljava/security/cert/X509CRLSelector;
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 457
    new-instance v2, Ljava/util/ArrayList;

    #@c
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@e
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@11
    iput-object v2, v1, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 462
    .end local v1    # "result":Ljava/security/cert/X509CRLSelector;
    :cond_0
    :goto_0
    return-object v1

    #@14
    .line 459
    :catch_0
    move-exception v0

    #@15
    .line 460
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    #@16
    .local v1, "result":Ljava/security/cert/X509CRLSelector;
    goto :goto_0
.end method

.method public getCertificateChecking()Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->certificateChecking:Ljava/security/cert/X509Certificate;

    #@2
    return-object v0
.end method

.method public getDateAndTime()Ljava/util/Date;
    .locals 4

    #@0
    .prologue
    .line 344
    iget-wide v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    #@2
    const-wide/16 v2, -0x1

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 345
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 347
    :cond_0
    new-instance v0, Ljava/util/Date;

    #@c
    iget-wide v2, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    #@e
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@11
    return-object v0
.end method

.method public getIssuerNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 302
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 303
    return-object v1

    #@6
    .line 305
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/util/Collection;

    #@e
    return-object v0
.end method

.method public getIssuers()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 277
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 278
    return-object v3

    #@6
    .line 280
    :cond_0
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    #@8
    if-nez v2, :cond_1

    #@a
    .line 281
    new-instance v2, Ljava/util/ArrayList;

    #@c
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v3

    #@12
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@15
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    #@17
    .line 283
    :cond_1
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v1

    #@1d
    .line 285
    .local v1, "size":I
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@22
    move-result v0

    #@23
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@25
    .line 286
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    #@27
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    #@29
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Ljava/lang/String;

    #@31
    invoke-direct {v4, v2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    #@34
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    .line 285
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 288
    :cond_2
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    #@3c
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@3f
    move-result-object v2

    #@40
    return-object v2
.end method

.method public getMaxCRL()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 331
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getMinCRL()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 318
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .locals 11
    .param p1, "crl"    # Ljava/security/cert/CRL;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 403
    instance-of v6, p1, Ljava/security/cert/X509CRL;

    #@3
    if-nez v6, :cond_0

    #@5
    .line 404
    return v10

    #@6
    :cond_0
    move-object v2, p1

    #@7
    .line 406
    check-cast v2, Ljava/security/cert/X509CRL;

    #@9
    .line 407
    .local v2, "crlist":Ljava/security/cert/X509CRL;
    iget-object v6, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@b
    if-eqz v6, :cond_1

    #@d
    .line 409
    iget-object v6, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@f
    .line 410
    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@12
    move-result-object v7

    #@13
    .line 411
    const-string/jumbo v8, "CANONICAL"

    #@16
    .line 410
    invoke-virtual {v7, v8}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v7

    #@1a
    .line 409
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_3

    #@20
    .line 414
    :cond_1
    iget-object v6, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    #@22
    if-nez v6, :cond_2

    #@24
    iget-object v6, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    #@26
    if-eqz v6, :cond_5

    #@28
    .line 418
    :cond_2
    :try_start_0
    const-string/jumbo v6, "2.5.29.20"

    #@2b
    invoke-virtual {v2, v6}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    #@2e
    move-result-object v0

    #@2f
    .line 419
    .local v0, "bytes":[B
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6, v0}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    .end local v0    # "bytes":[B
    check-cast v0, [B

    #@39
    .line 420
    .restart local v0    # "bytes":[B
    new-instance v1, Ljava/math/BigInteger;

    #@3b
    .line 421
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6, v0}, Lorg/apache/harmony/security/asn1/ASN1Integer;->decode([B)Ljava/lang/Object;

    #@42
    move-result-object v6

    #@43
    .line 420
    check-cast v6, [B

    #@45
    invoke-direct {v1, v6}, Ljava/math/BigInteger;-><init>([B)V

    #@48
    .line 422
    .local v1, "crlNumber":Ljava/math/BigInteger;
    iget-object v6, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    #@4a
    if-eqz v6, :cond_4

    #@4c
    iget-object v6, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    #@4e
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@51
    move-result v6

    #@52
    if-gez v6, :cond_4

    #@54
    .line 423
    return v10

    #@55
    .line 412
    .end local v0    # "bytes":[B
    .end local v1    # "crlNumber":Ljava/math/BigInteger;
    :cond_3
    return v10

    #@56
    .line 425
    .restart local v0    # "bytes":[B
    .restart local v1    # "crlNumber":Ljava/math/BigInteger;
    :cond_4
    iget-object v6, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    #@58
    if-eqz v6, :cond_5

    #@5a
    iget-object v6, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    #@5c
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5f
    move-result v6

    #@60
    if-lez v6, :cond_5

    #@62
    .line 426
    return v10

    #@63
    .line 428
    .end local v0    # "bytes":[B
    .end local v1    # "crlNumber":Ljava/math/BigInteger;
    :catch_0
    move-exception v3

    #@64
    .line 429
    .local v3, "e":Ljava/io/IOException;
    return v10

    #@65
    .line 432
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    iget-wide v6, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    #@67
    const-wide/16 v8, -0x1

    #@69
    cmp-long v6, v6, v8

    #@6b
    if-eqz v6, :cond_9

    #@6d
    .line 433
    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    #@70
    move-result-object v5

    #@71
    .line 434
    .local v5, "thisUp":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    #@74
    move-result-object v4

    #@75
    .line 435
    .local v4, "nextUp":Ljava/util/Date;
    if-eqz v5, :cond_6

    #@77
    if-nez v4, :cond_7

    #@79
    .line 436
    :cond_6
    return v10

    #@7a
    .line 438
    :cond_7
    iget-wide v6, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    #@7c
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    #@7f
    move-result-wide v8

    #@80
    cmp-long v6, v6, v8

    #@82
    if-ltz v6, :cond_8

    #@84
    .line 439
    iget-wide v6, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    #@86
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    #@89
    move-result-wide v8

    #@8a
    cmp-long v6, v6, v8

    #@8c
    if-lez v6, :cond_9

    #@8e
    .line 440
    :cond_8
    return v10

    #@8f
    .line 443
    .end local v4    # "nextUp":Ljava/util/Date;
    .end local v5    # "thisUp":Ljava/util/Date;
    :cond_9
    const/4 v6, 0x1

    #@90
    return v6
.end method

.method public setCertificateChecking(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 265
    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->certificateChecking:Ljava/security/cert/X509Certificate;

    #@2
    .line 264
    return-void
.end method

.method public setDateAndTime(Ljava/util/Date;)V
    .locals 2
    .param p1, "dateAndTime"    # Ljava/util/Date;

    #@0
    .prologue
    .line 250
    if-nez p1, :cond_0

    #@2
    .line 251
    const-wide/16 v0, -0x1

    #@4
    iput-wide v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    #@6
    .line 252
    return-void

    #@7
    .line 254
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    #@d
    .line 249
    return-void
.end method

.method public setIssuerNames(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v2, 0x0

    #@1
    .line 104
    if-nez p1, :cond_0

    #@3
    .line 105
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@5
    .line 106
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    #@7
    .line 107
    return-void

    #@8
    .line 109
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_1

    #@e
    .line 110
    return-void

    #@f
    .line 112
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    #@11
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@14
    move-result v3

    #@15
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@18
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@1a
    .line 113
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "name$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_4

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    .line 114
    .local v0, "name":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    #@2a
    if-eqz v2, :cond_2

    #@2c
    .line 115
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@2e
    .line 116
    new-instance v3, Lorg/apache/harmony/security/x501/Name;

    #@30
    check-cast v0, Ljava/lang/String;

    #@32
    .end local v0    # "name":Ljava/lang/Object;
    invoke-direct {v3, v0}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    #@35
    .line 117
    const-string/jumbo v4, "CANONICAL"

    #@38
    .line 116
    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    .line 115
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3f
    goto :goto_0

    #@40
    .line 118
    .restart local v0    # "name":Ljava/lang/Object;
    :cond_2
    instance-of v2, v0, [B

    #@42
    if-eqz v2, :cond_3

    #@44
    .line 119
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@46
    .line 120
    new-instance v3, Lorg/apache/harmony/security/x501/Name;

    #@48
    check-cast v0, [B

    #@4a
    .end local v0    # "name":Ljava/lang/Object;
    invoke-direct {v3, v0}, Lorg/apache/harmony/security/x501/Name;-><init>([B)V

    #@4d
    .line 121
    const-string/jumbo v4, "CANONICAL"

    #@50
    .line 120
    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    .line 119
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@57
    goto :goto_0

    #@58
    .line 123
    .restart local v0    # "name":Ljava/lang/Object;
    :cond_3
    new-instance v2, Ljava/io/IOException;

    #@5a
    const-string/jumbo v3, "name neither a String nor a byte[]"

    #@5d
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@60
    throw v2

    #@61
    .line 103
    .end local v0    # "name":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method public setIssuers(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "issuers":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/security/auth/x500/X500Principal;>;"
    const/4 v2, 0x0

    #@1
    .line 72
    if-nez p1, :cond_0

    #@3
    .line 73
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@5
    .line 74
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    #@7
    .line 75
    return-void

    #@8
    .line 77
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@a
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@d
    move-result v3

    #@e
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@11
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@13
    .line 78
    new-instance v2, Ljava/util/ArrayList;

    #@15
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@18
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    #@1a
    .line 79
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "issuer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_1

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    #@2a
    .line 80
    .local v0, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@2c
    const-string/jumbo v3, "CANONICAL"

    #@2f
    invoke-virtual {v0, v3}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@36
    goto :goto_0

    #@37
    .line 71
    .end local v0    # "issuer":Ljavax/security/auth/x500/X500Principal;
    :cond_1
    return-void
.end method

.method public setMaxCRLNumber(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "maxCRL"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 236
    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    #@2
    .line 235
    return-void
.end method

.method public setMinCRLNumber(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "minCRL"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 222
    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    #@2
    .line 221
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 367
    .local v1, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "X509CRLSelector:\n["

    #@8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 368
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 369
    const-string/jumbo v3, "\n  IssuerNames:\n  ["

    #@12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 370
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v2

    #@1b
    .line 371
    .local v2, "size":I
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@1e
    .line 372
    const-string/jumbo v3, "\n    "

    #@21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    .line 373
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, Ljava/lang/String;

    #@2d
    .line 372
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 371
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_0

    #@33
    .line 375
    :cond_0
    const-string/jumbo v3, "\n  ]"

    #@36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 377
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_1
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    #@3b
    if-eqz v3, :cond_2

    #@3d
    .line 378
    const-string/jumbo v3, "\n  minCRL: "

    #@40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    .line 380
    :cond_2
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    #@4b
    if-eqz v3, :cond_3

    #@4d
    .line 381
    const-string/jumbo v3, "\n  maxCRL: "

    #@50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    #@56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    .line 383
    :cond_3
    iget-wide v4, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    #@5b
    const-wide/16 v6, -0x1

    #@5d
    cmp-long v3, v4, v6

    #@5f
    if-eqz v3, :cond_4

    #@61
    .line 384
    const-string/jumbo v3, "\n  dateAndTime: "

    #@64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    new-instance v4, Ljava/util/Date;

    #@6a
    iget-wide v6, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    #@6c
    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    #@6f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    .line 386
    :cond_4
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->certificateChecking:Ljava/security/cert/X509Certificate;

    #@74
    if-eqz v3, :cond_5

    #@76
    .line 387
    const-string/jumbo v3, "\n  certificateChecking: "

    #@79
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v3

    #@7d
    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->certificateChecking:Ljava/security/cert/X509Certificate;

    #@7f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@82
    .line 389
    :cond_5
    const-string/jumbo v3, "\n]"

    #@85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    .line 390
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v3

    #@8c
    return-object v3
.end method
