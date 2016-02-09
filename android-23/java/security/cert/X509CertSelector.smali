.class public Ljava/security/cert/X509CertSelector;
.super Ljava/lang/Object;
.source "X509CertSelector.java"

# interfaces
.implements Ljava/security/cert/CertSelector;


# instance fields
.field private authorityKeyIdentifier:[B

.field private certificateEquals:Ljava/security/cert/X509Certificate;

.field private certificateValid:Ljava/util/Date;

.field private extendedKeyUsage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private issuer:Ljavax/security/auth/x500/X500Principal;

.field private issuerBytes:[B

.field private issuerName:Ljava/lang/String;

.field private keyUsage:[Z

.field private matchAllNames:Z

.field private nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

.field private pathLen:I

.field private pathToNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation
.end field

.field private policies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private privateKeyValid:Ljava/util/Date;

.field private serialNumber:Ljava/math/BigInteger;

.field private subject:Ljavax/security/auth/x500/X500Principal;

.field private subjectAltNames:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation
.end field

.field private subjectKeyIdentifier:[B

.field private subjectPublicKey:[B

.field private subjectPublicKeyAlgID:Ljava/lang/String;

.field private subjectPublicKeyImpl:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    #@6
    .line 66
    const/4 v0, -0x1

    #@7
    iput v0, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    #@9
    .line 80
    return-void
.end method

.method private checkOID(Ljava/lang/String;)V
    .locals 8
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x2e

    #@2
    .line 455
    const/4 v0, 0x0

    #@3
    .line 456
    .local v0, "beg":I
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->indexOf(II)I

    #@6
    move-result v4

    #@7
    .line 458
    .local v4, "end":I
    :try_start_0
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a
    move-result-object v5

    #@b
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@e
    move-result v1

    #@f
    .line 459
    .local v1, "comp":I
    add-int/lit8 v0, v4, 0x1

    #@11
    .line 460
    if-ltz v1, :cond_0

    #@13
    const/4 v5, 0x2

    #@14
    if-le v1, v5, :cond_1

    #@16
    .line 461
    :cond_0
    new-instance v5, Ljava/io/IOException;

    #@18
    new-instance v6, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v7, "Bad OID: "

    #@20
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v6

    #@2c
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    #@30
    .line 468
    .end local v1    # "comp":I
    :catch_0
    move-exception v2

    #@31
    .line 469
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Ljava/io/IOException;

    #@33
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v7, "Bad OID: "

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v5

    #@4b
    .line 463
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "comp":I
    :cond_1
    const/16 v5, 0x2e

    #@4d
    :try_start_1
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->indexOf(II)I

    #@50
    move-result v4

    #@51
    .line 464
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@58
    move-result v1

    #@59
    .line 465
    if-ltz v1, :cond_2

    #@5b
    const/16 v5, 0x27

    #@5d
    if-le v1, v5, :cond_3

    #@5f
    .line 466
    :cond_2
    new-instance v5, Ljava/io/IOException;

    #@61
    new-instance v6, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v7, "Bad OID: "

    #@69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v6

    #@6d
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v6

    #@75
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@78
    throw v5
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@79
    .line 470
    .end local v1    # "comp":I
    :catch_1
    move-exception v3

    #@7a
    .line 471
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/io/IOException;

    #@7c
    new-instance v6, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v7, "Bad OID: "

    #@84
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v6

    #@88
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v6

    #@8c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v6

    #@90
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@93
    throw v5

    #@94
    .line 454
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "comp":I
    :cond_3
    return-void
.end method

.method private getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "oid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1083
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@4
    move-result-object v0

    #@5
    .line 1084
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    #@7
    .line 1085
    return-object v3

    #@8
    .line 1087
    :cond_0
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, v0}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    return-object v2

    #@13
    .line 1088
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    #@14
    .line 1089
    .local v1, "e":Ljava/io/IOException;
    return-object v3
.end method


# virtual methods
.method public addPathToName(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 902
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    #@2
    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    #@5
    .line 904
    .local v0, "path_name":Lorg/apache/harmony/security/x509/GeneralName;
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 905
    new-instance v1, Ljava/util/ArrayList;

    #@b
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    #@10
    .line 907
    :cond_0
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15
    .line 901
    return-void
.end method

.method public addPathToName(I[B)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 958
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    #@2
    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(I[B)V

    #@5
    .line 960
    .local v0, "path_name":Lorg/apache/harmony/security/x509/GeneralName;
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 961
    new-instance v1, Ljava/util/ArrayList;

    #@b
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    #@10
    .line 963
    :cond_0
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15
    .line 957
    return-void
.end method

.method public addSubjectAlternativeName(ILjava/lang/String;)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 691
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    #@2
    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    #@5
    .line 693
    .local v0, "alt_name":Lorg/apache/harmony/security/x509/GeneralName;
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 694
    const/16 v1, 0x9

    #@b
    new-array v1, v1, [Ljava/util/ArrayList;

    #@d
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@f
    .line 696
    :cond_0
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@11
    aget-object v1, v1, p1

    #@13
    if-nez v1, :cond_1

    #@15
    .line 697
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@17
    new-instance v2, Ljava/util/ArrayList;

    #@19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1c
    aput-object v2, v1, p1

    #@1e
    .line 699
    :cond_1
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@20
    aget-object v1, v1, p1

    #@22
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    .line 690
    return-void
.end method

.method public addSubjectAlternativeName(I[B)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 714
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    #@2
    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(I[B)V

    #@5
    .line 716
    .local v0, "alt_name":Lorg/apache/harmony/security/x509/GeneralName;
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 717
    const/16 v1, 0x9

    #@b
    new-array v1, v1, [Ljava/util/ArrayList;

    #@d
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@f
    .line 719
    :cond_0
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@11
    aget-object v1, v1, p1

    #@13
    if-nez v1, :cond_1

    #@15
    .line 720
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@17
    new-instance v2, Ljava/util/ArrayList;

    #@19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1c
    aput-object v2, v1, p1

    #@1e
    .line 722
    :cond_1
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@20
    aget-object v1, v1, p1

    #@22
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    .line 713
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x9

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    .line 1338
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Ljava/security/cert/X509CertSelector;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1343
    .local v2, "result":Ljava/security/cert/X509CertSelector;
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 1345
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    #@10
    array-length v3, v3

    #@11
    new-array v3, v3, [B

    #@13
    .line 1344
    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    #@15
    .line 1346
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    #@17
    .line 1347
    iget-object v5, v2, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    #@19
    .line 1348
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    #@1b
    array-length v6, v6

    #@1c
    .line 1346
    invoke-static {v3, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1f
    .line 1350
    :cond_0
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    #@21
    if-eqz v3, :cond_1

    #@23
    .line 1352
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    #@25
    array-length v3, v3

    #@26
    new-array v3, v3, [B

    #@28
    .line 1351
    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    #@2a
    .line 1353
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    #@2c
    .line 1354
    iget-object v5, v2, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    #@2e
    .line 1355
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    #@30
    array-length v6, v6

    #@31
    .line 1353
    invoke-static {v3, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@34
    .line 1357
    :cond_1
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    #@36
    if-eqz v3, :cond_2

    #@38
    .line 1358
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    #@3a
    array-length v3, v3

    #@3b
    new-array v3, v3, [B

    #@3d
    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    #@3f
    .line 1359
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    #@41
    iget-object v5, v2, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    #@43
    .line 1360
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    #@45
    array-length v6, v6

    #@46
    .line 1359
    invoke-static {v3, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@49
    .line 1362
    :cond_2
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@4b
    if-eqz v3, :cond_3

    #@4d
    .line 1363
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@4f
    array-length v3, v3

    #@50
    new-array v3, v3, [Z

    #@52
    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@54
    .line 1364
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@56
    iget-object v5, v2, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@58
    .line 1365
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@5a
    array-length v6, v6

    #@5b
    .line 1364
    invoke-static {v3, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@5e
    .line 1367
    :cond_3
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    #@60
    if-nez v3, :cond_5

    #@62
    move-object v3, v4

    #@63
    :goto_0
    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    #@65
    .line 1370
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@67
    if-eqz v3, :cond_6

    #@69
    .line 1371
    new-array v3, v8, [Ljava/util/ArrayList;

    #@6b
    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@6d
    .line 1372
    const/4 v1, 0x0

    #@6e
    .local v1, "i":I
    :goto_1
    if-ge v1, v8, :cond_6

    #@70
    .line 1373
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@72
    aget-object v3, v3, v1

    #@74
    if-eqz v3, :cond_4

    #@76
    .line 1374
    iget-object v3, v2, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@78
    .line 1375
    new-instance v5, Ljava/util/ArrayList;

    #@7a
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@7c
    aget-object v6, v6, v1

    #@7e
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@81
    .line 1374
    aput-object v5, v3, v1

    #@83
    .line 1372
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@85
    goto :goto_1

    #@86
    .line 1339
    .end local v1    # "i":I
    .end local v2    # "result":Ljava/security/cert/X509CertSelector;
    :catch_0
    move-exception v0

    #@87
    .line 1340
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    return-object v4

    #@88
    .line 1369
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v2    # "result":Ljava/security/cert/X509CertSelector;
    :cond_5
    new-instance v3, Ljava/util/HashSet;

    #@8a
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    #@8c
    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@8f
    goto :goto_0

    #@90
    .line 1379
    :cond_6
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    #@92
    if-nez v3, :cond_7

    #@94
    move-object v3, v4

    #@95
    :goto_2
    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    #@97
    .line 1380
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    #@99
    if-nez v3, :cond_8

    #@9b
    :goto_3
    iput-object v4, v2, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    #@9d
    .line 1383
    return-object v2

    #@9e
    .line 1379
    :cond_7
    new-instance v3, Ljava/util/HashSet;

    #@a0
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    #@a2
    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@a5
    goto :goto_2

    #@a6
    .line 1382
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    #@a8
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    #@aa
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@ad
    goto :goto_3
.end method

.method public getAuthorityKeyIdentifier()[B
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 390
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    #@4
    if-nez v1, :cond_0

    #@6
    .line 391
    return-object v2

    #@7
    .line 393
    :cond_0
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    #@9
    array-length v1, v1

    #@a
    new-array v0, v1, [B

    #@c
    .line 394
    .local v0, "res":[B
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    #@e
    array-length v2, v0

    #@f
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@12
    .line 395
    return-object v0
.end method

.method public getBasicConstraints()I
    .locals 1

    #@0
    .prologue
    .line 847
    iget v0, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    #@2
    return v0
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    #@2
    return-object v0
.end method

.method public getCertificateValid()Ljava/util/Date;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 418
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    .line 420
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    #@8
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/util/Date;

    #@e
    goto :goto_0
.end method

.method public getExtendedKeyUsage()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 611
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@2
    return-object v0
.end method

.method public getIssuerAsBytes()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 224
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 225
    return-object v2

    #@7
    .line 227
    :cond_0
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    #@9
    if-nez v1, :cond_1

    #@b
    .line 228
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@d
    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    #@13
    .line 230
    :cond_1
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    #@15
    array-length v1, v1

    #@16
    new-array v0, v1, [B

    #@18
    .line 231
    .local v0, "result":[B
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    #@1a
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    #@1c
    array-length v2, v2

    #@1d
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@20
    .line 232
    return-object v0
.end method

.method public getIssuerAsString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 182
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 183
    return-object v1

    #@6
    .line 185
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    #@8
    if-nez v0, :cond_1

    #@a
    .line 186
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@c
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    #@12
    .line 188
    :cond_1
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    #@14
    return-object v0
.end method

.method public getKeyUsage()[Z
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 574
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 575
    return-object v2

    #@7
    .line 577
    :cond_0
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@9
    array-length v1, v1

    #@a
    new-array v0, v1, [Z

    #@c
    .line 578
    .local v0, "result":[Z
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@e
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@10
    array-length v2, v2

    #@11
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@14
    .line 579
    return-object v0
.end method

.method public getMatchAllSubjectAltNames()Z
    .locals 1

    #@0
    .prologue
    .line 640
    iget-boolean v0, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    #@2
    return v0
.end method

.method public getNameConstraints()[B
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 811
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    .line 813
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    #@8
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/NameConstraints;->getEncoded()[B

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getPathToNames()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 977
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 978
    return-object v4

    #@6
    .line 980
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@b
    .line 981
    .local v2, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    #@d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "name$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lorg/apache/harmony/security/x509/GeneralName;

    #@1d
    .line 982
    .local v0, "name":Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralName;->getAsList()Ljava/util/List;

    #@20
    move-result-object v3

    #@21
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 984
    .end local v0    # "name":Lorg/apache/harmony/security/x509/GeneralName;
    :cond_1
    return-object v2
.end method

.method public getPolicy()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 887
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getPrivateKeyValid()Ljava/util/Date;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 448
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 449
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    #@7
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/util/Date;

    #@d
    return-object v0

    #@e
    .line 451
    :cond_0
    return-object v1
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getSubject()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@2
    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 740
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 741
    return-object v5

    #@6
    .line 743
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@b
    .line 744
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<*>;>;"
    const/4 v3, 0x0

    #@c
    .local v3, "tag":I
    :goto_0
    const/16 v4, 0x9

    #@e
    if-ge v3, v4, :cond_2

    #@10
    .line 745
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@12
    aget-object v4, v4, v3

    #@14
    if-eqz v4, :cond_1

    #@16
    .line 746
    const/4 v1, 0x0

    #@17
    .local v1, "name":I
    :goto_1
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@19
    aget-object v4, v4, v3

    #@1b
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@1e
    move-result v4

    #@1f
    if-ge v1, v4, :cond_1

    #@21
    .line 747
    new-instance v0, Ljava/util/ArrayList;

    #@23
    const/4 v4, 0x2

    #@24
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@27
    .line 748
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v4

    #@2b
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2e
    .line 749
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@30
    aget-object v4, v4, v3

    #@32
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v4

    #@36
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    .line 750
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3c
    .line 746
    add-int/lit8 v1, v1, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 744
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v1    # "name":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@41
    goto :goto_0

    #@42
    .line 754
    :cond_2
    return-object v2
.end method

.method public getSubjectAsBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 324
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 325
    return-object v1

    #@6
    .line 327
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@8
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getSubjectAsString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 288
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 289
    return-object v1

    #@6
    .line 291
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@8
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getSubjectKeyIdentifier()[B
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 356
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    #@4
    if-nez v1, :cond_0

    #@6
    .line 357
    return-object v2

    #@7
    .line 359
    :cond_0
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    #@9
    array-length v1, v1

    #@a
    new-array v0, v1, [B

    #@c
    .line 360
    .local v0, "res":[B
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    #@e
    array-length v2, v0

    #@f
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@12
    .line 361
    return-object v0
.end method

.method public getSubjectPublicKey()Ljava/security/PublicKey;
    .locals 1

    #@0
    .prologue
    .line 546
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    #@2
    return-object v0
.end method

.method public getSubjectPublicKeyAlgID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 503
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 30
    .param p1, "certificate"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 1103
    move-object/from16 v0, p1

    #@2
    instance-of v0, v0, Ljava/security/cert/X509Certificate;

    #@4
    move/from16 v28, v0

    #@6
    if-nez v28, :cond_0

    #@8
    .line 1104
    const/16 v28, 0x0

    #@a
    return v28

    #@b
    :cond_0
    move-object/from16 v4, p1

    #@d
    .line 1107
    check-cast v4, Ljava/security/cert/X509Certificate;

    #@f
    .line 1108
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    #@11
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    #@13
    move-object/from16 v28, v0

    #@15
    if-eqz v28, :cond_1

    #@17
    .line 1109
    move-object/from16 v0, p0

    #@19
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    #@1b
    move-object/from16 v28, v0

    #@1d
    move-object/from16 v0, v28

    #@1f
    invoke-virtual {v0, v4}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v28

    #@23
    if-eqz v28, :cond_8

    #@25
    .line 1112
    :cond_1
    move-object/from16 v0, p0

    #@27
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    #@29
    move-object/from16 v28, v0

    #@2b
    if-eqz v28, :cond_2

    #@2d
    .line 1113
    move-object/from16 v0, p0

    #@2f
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    #@31
    move-object/from16 v28, v0

    #@33
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@36
    move-result-object v29

    #@37
    invoke-virtual/range {v28 .. v29}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v28

    #@3b
    if-eqz v28, :cond_9

    #@3d
    .line 1116
    :cond_2
    move-object/from16 v0, p0

    #@3f
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@41
    move-object/from16 v28, v0

    #@43
    if-eqz v28, :cond_3

    #@45
    .line 1117
    move-object/from16 v0, p0

    #@47
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@49
    move-object/from16 v28, v0

    #@4b
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@4e
    move-result-object v29

    #@4f
    invoke-virtual/range {v28 .. v29}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v28

    #@53
    if-eqz v28, :cond_a

    #@55
    .line 1120
    :cond_3
    move-object/from16 v0, p0

    #@57
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@59
    move-object/from16 v28, v0

    #@5b
    if-eqz v28, :cond_4

    #@5d
    .line 1121
    move-object/from16 v0, p0

    #@5f
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@61
    move-object/from16 v28, v0

    #@63
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@66
    move-result-object v29

    #@67
    invoke-virtual/range {v28 .. v29}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v28

    #@6b
    if-eqz v28, :cond_b

    #@6d
    .line 1124
    :cond_4
    move-object/from16 v0, p0

    #@6f
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    #@71
    move-object/from16 v28, v0

    #@73
    if-eqz v28, :cond_5

    #@75
    .line 1125
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    #@79
    move-object/from16 v28, v0

    #@7b
    .line 1128
    const-string/jumbo v29, "2.5.29.14"

    #@7e
    move-object/from16 v0, p0

    #@80
    move-object/from16 v1, v29

    #@82
    invoke-direct {v0, v4, v1}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    #@85
    move-result-object v29

    #@86
    .line 1125
    invoke-static/range {v28 .. v29}, Ljava/util/Arrays;->equals([B[B)Z

    #@89
    move-result v28

    #@8a
    if-eqz v28, :cond_c

    #@8c
    .line 1131
    :cond_5
    move-object/from16 v0, p0

    #@8e
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    #@90
    move-object/from16 v28, v0

    #@92
    if-eqz v28, :cond_6

    #@94
    .line 1132
    move-object/from16 v0, p0

    #@96
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    #@98
    move-object/from16 v28, v0

    #@9a
    .line 1133
    const-string/jumbo v29, "2.5.29.35"

    #@9d
    move-object/from16 v0, p0

    #@9f
    move-object/from16 v1, v29

    #@a1
    invoke-direct {v0, v4, v1}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    #@a4
    move-result-object v29

    #@a5
    .line 1132
    invoke-static/range {v28 .. v29}, Ljava/util/Arrays;->equals([B[B)Z

    #@a8
    move-result v28

    #@a9
    if-eqz v28, :cond_d

    #@ab
    .line 1136
    :cond_6
    move-object/from16 v0, p0

    #@ad
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    #@af
    move-object/from16 v28, v0

    #@b1
    if-eqz v28, :cond_7

    #@b3
    .line 1138
    :try_start_0
    move-object/from16 v0, p0

    #@b5
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    #@b7
    move-object/from16 v28, v0

    #@b9
    move-object/from16 v0, v28

    #@bb
    invoke-virtual {v4, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_0

    #@be
    .line 1145
    :cond_7
    move-object/from16 v0, p0

    #@c0
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    #@c2
    move-object/from16 v28, v0

    #@c4
    if-eqz v28, :cond_11

    #@c6
    .line 1147
    :try_start_1
    const-string/jumbo v28, "2.5.29.16"

    #@c9
    move-object/from16 v0, p0

    #@cb
    move-object/from16 v1, v28

    #@cd
    invoke-direct {v0, v4, v1}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    #@d0
    move-result-object v3

    #@d1
    .line 1148
    .local v3, "bytes":[B
    if-nez v3, :cond_e

    #@d3
    .line 1149
    const/16 v28, 0x0

    #@d5
    return v28

    #@d6
    .line 1110
    .end local v3    # "bytes":[B
    :cond_8
    const/16 v28, 0x0

    #@d8
    return v28

    #@d9
    .line 1114
    :cond_9
    const/16 v28, 0x0

    #@db
    return v28

    #@dc
    .line 1118
    :cond_a
    const/16 v28, 0x0

    #@de
    return v28

    #@df
    .line 1122
    :cond_b
    const/16 v28, 0x0

    #@e1
    return v28

    #@e2
    .line 1129
    :cond_c
    const/16 v28, 0x0

    #@e4
    return v28

    #@e5
    .line 1134
    :cond_d
    const/16 v28, 0x0

    #@e7
    return v28

    #@e8
    .line 1141
    :catch_0
    move-exception v7

    #@e9
    .line 1142
    .local v7, "e":Ljava/security/cert/CertificateNotYetValidException;
    const/16 v28, 0x0

    #@eb
    return v28

    #@ec
    .line 1139
    .end local v7    # "e":Ljava/security/cert/CertificateNotYetValidException;
    :catch_1
    move-exception v6

    #@ed
    .line 1140
    .local v6, "e":Ljava/security/cert/CertificateExpiredException;
    const/16 v28, 0x0

    #@ef
    return v28

    #@f0
    .line 1152
    .end local v6    # "e":Ljava/security/cert/CertificateExpiredException;
    .restart local v3    # "bytes":[B
    :cond_e
    sget-object v28, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@f2
    move-object/from16 v0, v28

    #@f4
    invoke-virtual {v0, v3}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    #@f7
    move-result-object v22

    #@f8
    .line 1151
    check-cast v22, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;

    #@fa
    .line 1153
    .local v22, "pkup":Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->getNotBefore()Ljava/util/Date;

    #@fd
    move-result-object v20

    #@fe
    .line 1154
    .local v20, "notBefore":Ljava/util/Date;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->getNotAfter()Ljava/util/Date;

    #@101
    move-result-object v19

    #@102
    .line 1155
    .local v19, "notAfter":Ljava/util/Date;
    if-nez v20, :cond_f

    #@104
    if-nez v19, :cond_f

    #@106
    .line 1156
    const/16 v28, 0x0

    #@108
    return v28

    #@109
    .line 1158
    :cond_f
    if-eqz v20, :cond_10

    #@10b
    .line 1159
    move-object/from16 v0, p0

    #@10d
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    #@10f
    move-object/from16 v28, v0

    #@111
    move-object/from16 v0, v20

    #@113
    move-object/from16 v1, v28

    #@115
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    #@118
    move-result v28

    #@119
    if-lez v28, :cond_10

    #@11b
    .line 1160
    const/16 v28, 0x0

    #@11d
    return v28

    #@11e
    .line 1162
    :cond_10
    if-eqz v19, :cond_11

    #@120
    .line 1163
    move-object/from16 v0, p0

    #@122
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    #@124
    move-object/from16 v28, v0

    #@126
    move-object/from16 v0, v19

    #@128
    move-object/from16 v1, v28

    #@12a
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@12d
    move-result v28

    #@12e
    if-gez v28, :cond_11

    #@130
    .line 1164
    const/16 v28, 0x0

    #@132
    return v28

    #@133
    .line 1166
    .end local v3    # "bytes":[B
    .end local v19    # "notAfter":Ljava/util/Date;
    .end local v20    # "notBefore":Ljava/util/Date;
    .end local v22    # "pkup":Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;
    :catch_2
    move-exception v5

    #@134
    .line 1167
    .local v5, "e":Ljava/io/IOException;
    const/16 v28, 0x0

    #@136
    return v28

    #@137
    .line 1170
    .end local v5    # "e":Ljava/io/IOException;
    :cond_11
    move-object/from16 v0, p0

    #@139
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    #@13b
    move-object/from16 v28, v0

    #@13d
    if-eqz v28, :cond_12

    #@13f
    .line 1172
    :try_start_2
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@142
    move-result-object v28

    #@143
    invoke-interface/range {v28 .. v28}, Ljava/security/PublicKey;->getEncoded()[B

    #@146
    move-result-object v9

    #@147
    .line 1174
    .local v9, "encoding":[B
    sget-object v28, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@149
    move-object/from16 v0, v28

    #@14b
    invoke-virtual {v0, v9}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    #@14e
    move-result-object v28

    #@14f
    .line 1173
    check-cast v28, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    #@151
    invoke-virtual/range {v28 .. v28}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getAlgorithmIdentifier()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@154
    move-result-object v2

    #@155
    .line 1176
    .local v2, "ai":Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    move-object/from16 v0, p0

    #@157
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    #@159
    move-object/from16 v28, v0

    #@15b
    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    #@15e
    move-result-object v29

    #@15f
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    #@162
    move-result v28

    #@163
    if-nez v28, :cond_12

    #@165
    .line 1177
    const/16 v28, 0x0

    #@167
    return v28

    #@168
    .line 1179
    .end local v2    # "ai":Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .end local v9    # "encoding":[B
    :catch_3
    move-exception v5

    #@169
    .line 1180
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    #@16c
    .line 1181
    const/16 v28, 0x0

    #@16e
    return v28

    #@16f
    .line 1184
    .end local v5    # "e":Ljava/io/IOException;
    :cond_12
    move-object/from16 v0, p0

    #@171
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    #@173
    move-object/from16 v28, v0

    #@175
    if-eqz v28, :cond_13

    #@177
    .line 1185
    move-object/from16 v0, p0

    #@179
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    #@17b
    move-object/from16 v28, v0

    #@17d
    .line 1186
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@180
    move-result-object v29

    #@181
    invoke-interface/range {v29 .. v29}, Ljava/security/PublicKey;->getEncoded()[B

    #@184
    move-result-object v29

    #@185
    .line 1185
    invoke-static/range {v28 .. v29}, Ljava/util/Arrays;->equals([B[B)Z

    #@188
    move-result v28

    #@189
    if-nez v28, :cond_13

    #@18b
    .line 1187
    const/16 v28, 0x0

    #@18d
    return v28

    #@18e
    .line 1190
    :cond_13
    move-object/from16 v0, p0

    #@190
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@192
    move-object/from16 v28, v0

    #@194
    if-eqz v28, :cond_19

    #@196
    .line 1191
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    #@199
    move-result-object v12

    #@19a
    .line 1192
    .local v12, "ku":[Z
    if-eqz v12, :cond_19

    #@19c
    .line 1193
    const/4 v10, 0x0

    #@19d
    .line 1194
    .local v10, "i":I
    array-length v0, v12

    #@19e
    move/from16 v28, v0

    #@1a0
    move-object/from16 v0, p0

    #@1a2
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@1a4
    move-object/from16 v29, v0

    #@1a6
    move-object/from16 v0, v29

    #@1a8
    array-length v0, v0

    #@1a9
    move/from16 v29, v0

    #@1ab
    move/from16 v0, v28

    #@1ad
    move/from16 v1, v29

    #@1af
    if-ge v0, v1, :cond_15

    #@1b1
    array-length v14, v12

    #@1b2
    .line 1196
    .local v14, "min_length":I
    :goto_0
    if-ge v10, v14, :cond_18

    #@1b4
    .line 1197
    move-object/from16 v0, p0

    #@1b6
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@1b8
    move-object/from16 v28, v0

    #@1ba
    aget-boolean v28, v28, v10

    #@1bc
    if-eqz v28, :cond_14

    #@1be
    aget-boolean v28, v12, v10

    #@1c0
    if-eqz v28, :cond_16

    #@1c2
    .line 1196
    :cond_14
    add-int/lit8 v10, v10, 0x1

    #@1c4
    goto :goto_0

    #@1c5
    .line 1195
    .end local v14    # "min_length":I
    :cond_15
    move-object/from16 v0, p0

    #@1c7
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@1c9
    move-object/from16 v28, v0

    #@1cb
    move-object/from16 v0, v28

    #@1cd
    array-length v14, v0

    #@1ce
    .restart local v14    # "min_length":I
    goto :goto_0

    #@1cf
    .line 1200
    :cond_16
    const/16 v28, 0x0

    #@1d1
    return v28

    #@1d2
    .line 1203
    :cond_17
    add-int/lit8 v10, v10, 0x1

    #@1d4
    :cond_18
    move-object/from16 v0, p0

    #@1d6
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@1d8
    move-object/from16 v28, v0

    #@1da
    move-object/from16 v0, v28

    #@1dc
    array-length v0, v0

    #@1dd
    move/from16 v28, v0

    #@1df
    move/from16 v0, v28

    #@1e1
    if-ge v10, v0, :cond_19

    #@1e3
    .line 1204
    move-object/from16 v0, p0

    #@1e5
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@1e7
    move-object/from16 v28, v0

    #@1e9
    aget-boolean v28, v28, v10

    #@1eb
    if-eqz v28, :cond_17

    #@1ed
    .line 1205
    const/16 v28, 0x0

    #@1ef
    return v28

    #@1f0
    .line 1210
    .end local v10    # "i":I
    .end local v12    # "ku":[Z
    .end local v14    # "min_length":I
    :cond_19
    move-object/from16 v0, p0

    #@1f2
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    #@1f4
    move-object/from16 v28, v0

    #@1f6
    if-eqz v28, :cond_1a

    #@1f8
    .line 1212
    :try_start_3
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    #@1fb
    move-result-object v11

    #@1fc
    .line 1213
    .local v11, "keyUsage":Ljava/util/List;
    if-eqz v11, :cond_1a

    #@1fe
    .line 1214
    move-object/from16 v0, p0

    #@200
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    #@202
    move-object/from16 v28, v0

    #@204
    move-object/from16 v0, v28

    #@206
    invoke-interface {v11, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_3 .. :try_end_3} :catch_4

    #@209
    move-result v28

    #@20a
    if-nez v28, :cond_1a

    #@20c
    .line 1215
    const/16 v28, 0x0

    #@20e
    return v28

    #@20f
    .line 1218
    .end local v11    # "keyUsage":Ljava/util/List;
    :catch_4
    move-exception v8

    #@210
    .line 1219
    .local v8, "e":Ljava/security/cert/CertificateParsingException;
    const/16 v28, 0x0

    #@212
    return v28

    #@213
    .line 1222
    .end local v8    # "e":Ljava/security/cert/CertificateParsingException;
    :cond_1a
    move-object/from16 v0, p0

    #@215
    iget v0, v0, Ljava/security/cert/X509CertSelector;->pathLen:I

    #@217
    move/from16 v28, v0

    #@219
    const/16 v29, -0x1

    #@21b
    move/from16 v0, v28

    #@21d
    move/from16 v1, v29

    #@21f
    if-eq v0, v1, :cond_1c

    #@221
    .line 1223
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    #@224
    move-result v21

    #@225
    .line 1224
    .local v21, "p_len":I
    move-object/from16 v0, p0

    #@227
    iget v0, v0, Ljava/security/cert/X509CertSelector;->pathLen:I

    #@229
    move/from16 v28, v0

    #@22b
    if-gez v28, :cond_1b

    #@22d
    if-ltz v21, :cond_1b

    #@22f
    .line 1226
    const/16 v28, 0x0

    #@231
    return v28

    #@232
    .line 1228
    :cond_1b
    move-object/from16 v0, p0

    #@234
    iget v0, v0, Ljava/security/cert/X509CertSelector;->pathLen:I

    #@236
    move/from16 v28, v0

    #@238
    if-lez v28, :cond_1c

    #@23a
    move-object/from16 v0, p0

    #@23c
    iget v0, v0, Ljava/security/cert/X509CertSelector;->pathLen:I

    #@23e
    move/from16 v28, v0

    #@240
    move/from16 v0, v28

    #@242
    move/from16 v1, v21

    #@244
    if-le v0, v1, :cond_1c

    #@246
    .line 1230
    const/16 v28, 0x0

    #@248
    return v28

    #@249
    .line 1233
    .end local v21    # "p_len":I
    :cond_1c
    move-object/from16 v0, p0

    #@24b
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@24d
    move-object/from16 v28, v0

    #@24f
    if-eqz v28, :cond_23

    #@251
    .line 1236
    :try_start_4
    const-string/jumbo v28, "2.5.29.17"

    #@254
    move-object/from16 v0, p0

    #@256
    move-object/from16 v1, v28

    #@258
    invoke-direct {v0, v4, v1}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    #@25b
    move-result-object v3

    #@25c
    .line 1237
    .restart local v3    # "bytes":[B
    if-nez v3, :cond_1d

    #@25e
    .line 1238
    const/16 v28, 0x0

    #@260
    return v28

    #@261
    .line 1240
    :cond_1d
    sget-object v28, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@263
    move-object/from16 v0, v28

    #@265
    invoke-virtual {v0, v3}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    #@268
    move-result-object v28

    #@269
    check-cast v28, Lorg/apache/harmony/security/x509/GeneralNames;

    #@26b
    invoke-virtual/range {v28 .. v28}, Lorg/apache/harmony/security/x509/GeneralNames;->getNames()Ljava/util/List;

    #@26e
    move-result-object v26

    #@26f
    .line 1242
    .local v26, "sans":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    if-eqz v26, :cond_1e

    #@271
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    #@274
    move-result v28

    #@275
    if-nez v28, :cond_1f

    #@277
    .line 1243
    :cond_1e
    const/16 v28, 0x0

    #@279
    return v28

    #@27a
    .line 1245
    :cond_1f
    const/16 v28, 0x9

    #@27c
    move/from16 v0, v28

    #@27e
    new-array v13, v0, [[Z

    #@280
    .line 1247
    .local v13, "map":[[Z
    const/4 v10, 0x0

    #@281
    .restart local v10    # "i":I
    :goto_1
    const/16 v28, 0x9

    #@283
    move/from16 v0, v28

    #@285
    if-ge v10, v0, :cond_21

    #@287
    .line 1248
    move-object/from16 v0, p0

    #@289
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@28b
    move-object/from16 v28, v0

    #@28d
    aget-object v28, v28, v10

    #@28f
    if-nez v28, :cond_20

    #@291
    .line 1249
    sget-object v28, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    #@293
    .line 1248
    :goto_2
    aput-object v28, v13, v10

    #@295
    .line 1247
    add-int/lit8 v10, v10, 0x1

    #@297
    goto :goto_1

    #@298
    .line 1249
    :cond_20
    move-object/from16 v0, p0

    #@29a
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@29c
    move-object/from16 v28, v0

    #@29e
    aget-object v28, v28, v10

    #@2a0
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    #@2a3
    move-result v28

    #@2a4
    move/from16 v0, v28

    #@2a6
    new-array v0, v0, [Z

    #@2a8
    move-object/from16 v28, v0

    #@2aa
    goto :goto_2

    #@2ab
    .line 1251
    :cond_21
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2ae
    move-result-object v17

    #@2af
    .local v17, "name$iterator":Ljava/util/Iterator;
    :cond_22
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@2b2
    move-result v28

    #@2b3
    if-eqz v28, :cond_26

    #@2b5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b8
    move-result-object v16

    #@2b9
    check-cast v16, Lorg/apache/harmony/security/x509/GeneralName;

    #@2bb
    .line 1252
    .local v16, "name":Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    #@2be
    move-result v27

    #@2bf
    .line 1253
    .local v27, "tag":I
    const/4 v10, 0x0

    #@2c0
    :goto_3
    aget-object v28, v13, v27

    #@2c2
    move-object/from16 v0, v28

    #@2c4
    array-length v0, v0

    #@2c5
    move/from16 v28, v0

    #@2c7
    move/from16 v0, v28

    #@2c9
    if-ge v10, v0, :cond_22

    #@2cb
    .line 1254
    move-object/from16 v0, p0

    #@2cd
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@2cf
    move-object/from16 v28, v0

    #@2d1
    aget-object v28, v28, v27

    #@2d3
    move-object/from16 v0, v28

    #@2d5
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2d8
    move-result-object v28

    #@2d9
    check-cast v28, Lorg/apache/harmony/security/x509/GeneralName;

    #@2db
    move-object/from16 v0, v28

    #@2dd
    move-object/from16 v1, v16

    #@2df
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x509/GeneralName;->equals(Ljava/lang/Object;)Z

    #@2e2
    move-result v28

    #@2e3
    if-eqz v28, :cond_25

    #@2e5
    .line 1255
    move-object/from16 v0, p0

    #@2e7
    iget-boolean v0, v0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    #@2e9
    move/from16 v28, v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    #@2eb
    if-nez v28, :cond_24

    #@2ed
    .line 1279
    .end local v3    # "bytes":[B
    .end local v10    # "i":I
    .end local v13    # "map":[[Z
    .end local v16    # "name":Lorg/apache/harmony/security/x509/GeneralName;
    .end local v17    # "name$iterator":Ljava/util/Iterator;
    .end local v26    # "sans":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    .end local v27    # "tag":I
    :cond_23
    move-object/from16 v0, p0

    #@2ef
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    #@2f1
    move-object/from16 v28, v0

    #@2f3
    if-eqz v28, :cond_2a

    #@2f5
    .line 1280
    move-object/from16 v0, p0

    #@2f7
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    #@2f9
    move-object/from16 v28, v0

    #@2fb
    move-object/from16 v0, v28

    #@2fd
    invoke-virtual {v0, v4}, Lorg/apache/harmony/security/x509/NameConstraints;->isAcceptable(Ljava/security/cert/X509Certificate;)Z

    #@300
    move-result v28

    #@301
    if-nez v28, :cond_2a

    #@303
    .line 1281
    const/16 v28, 0x0

    #@305
    return v28

    #@306
    .line 1258
    .restart local v3    # "bytes":[B
    .restart local v10    # "i":I
    .restart local v13    # "map":[[Z
    .restart local v16    # "name":Lorg/apache/harmony/security/x509/GeneralName;
    .restart local v17    # "name$iterator":Ljava/util/Iterator;
    .restart local v26    # "sans":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    .restart local v27    # "tag":I
    :cond_24
    :try_start_5
    aget-object v28, v13, v27

    #@308
    const/16 v29, 0x1

    #@30a
    aput-boolean v29, v28, v10

    #@30c
    .line 1253
    :cond_25
    add-int/lit8 v10, v10, 0x1

    #@30e
    goto :goto_3

    #@30f
    .line 1262
    .end local v16    # "name":Lorg/apache/harmony/security/x509/GeneralName;
    .end local v27    # "tag":I
    :cond_26
    move-object/from16 v0, p0

    #@311
    iget-boolean v0, v0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    #@313
    move/from16 v28, v0

    #@315
    if-nez v28, :cond_27

    #@317
    .line 1264
    const/16 v28, 0x0

    #@319
    return v28

    #@31a
    .line 1267
    :cond_27
    const/16 v27, 0x0

    #@31c
    .restart local v27    # "tag":I
    :goto_4
    const/16 v28, 0x9

    #@31e
    move/from16 v0, v27

    #@320
    move/from16 v1, v28

    #@322
    if-ge v0, v1, :cond_23

    #@324
    .line 1268
    const/4 v15, 0x0

    #@325
    .local v15, "name":I
    :goto_5
    aget-object v28, v13, v27

    #@327
    move-object/from16 v0, v28

    #@329
    array-length v0, v0

    #@32a
    move/from16 v28, v0

    #@32c
    move/from16 v0, v28

    #@32e
    if-ge v15, v0, :cond_29

    #@330
    .line 1269
    aget-object v28, v13, v27

    #@332
    aget-boolean v28, v28, v15
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    #@334
    if-nez v28, :cond_28

    #@336
    .line 1270
    const/16 v28, 0x0

    #@338
    return v28

    #@339
    .line 1268
    :cond_28
    add-int/lit8 v15, v15, 0x1

    #@33b
    goto :goto_5

    #@33c
    .line 1267
    :cond_29
    add-int/lit8 v27, v27, 0x1

    #@33e
    goto :goto_4

    #@33f
    .line 1274
    .end local v3    # "bytes":[B
    .end local v10    # "i":I
    .end local v13    # "map":[[Z
    .end local v15    # "name":I
    .end local v17    # "name$iterator":Ljava/util/Iterator;
    .end local v26    # "sans":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    .end local v27    # "tag":I
    :catch_5
    move-exception v5

    #@340
    .line 1275
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    #@343
    .line 1276
    const/16 v28, 0x0

    #@345
    return v28

    #@346
    .line 1284
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2a
    move-object/from16 v0, p0

    #@348
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    #@34a
    move-object/from16 v28, v0

    #@34c
    if-eqz v28, :cond_2e

    #@34e
    .line 1285
    const-string/jumbo v28, "2.5.29.32"

    #@351
    move-object/from16 v0, p0

    #@353
    move-object/from16 v1, v28

    #@355
    invoke-direct {v0, v4, v1}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    #@358
    move-result-object v3

    #@359
    .line 1286
    .restart local v3    # "bytes":[B
    if-nez v3, :cond_2b

    #@35b
    .line 1287
    const/16 v28, 0x0

    #@35d
    return v28

    #@35e
    .line 1289
    :cond_2b
    move-object/from16 v0, p0

    #@360
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    #@362
    move-object/from16 v28, v0

    #@364
    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->size()I

    #@367
    move-result v28

    #@368
    if-nez v28, :cond_2c

    #@36a
    .line 1292
    const/16 v28, 0x1

    #@36c
    return v28

    #@36d
    .line 1297
    :cond_2c
    :try_start_6
    sget-object v28, Lorg/apache/harmony/security/x509/CertificatePolicies;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@36f
    move-object/from16 v0, v28

    #@371
    invoke-virtual {v0, v3}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    #@374
    move-result-object v28

    #@375
    check-cast v28, Lorg/apache/harmony/security/x509/CertificatePolicies;

    #@377
    invoke-virtual/range {v28 .. v28}, Lorg/apache/harmony/security/x509/CertificatePolicies;->getPolicyInformations()Ljava/util/List;

    #@37a
    move-result-object v25

    #@37b
    .line 1299
    .local v25, "policyInformations":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/PolicyInformation;>;"
    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37e
    move-result-object v24

    #@37f
    .local v24, "policyInformation$iterator":Ljava/util/Iterator;
    :cond_2d
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    #@382
    move-result v28

    #@383
    if-eqz v28, :cond_2f

    #@385
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@388
    move-result-object v23

    #@389
    check-cast v23, Lorg/apache/harmony/security/x509/PolicyInformation;

    #@38b
    .line 1300
    .local v23, "policyInformation":Lorg/apache/harmony/security/x509/PolicyInformation;
    move-object/from16 v0, p0

    #@38d
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    #@38f
    move-object/from16 v28, v0

    #@391
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/x509/PolicyInformation;->getPolicyIdentifier()Ljava/lang/String;

    #@394
    move-result-object v29

    #@395
    invoke-interface/range {v28 .. v29}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    #@398
    move-result v28

    #@399
    if-eqz v28, :cond_2d

    #@39b
    .line 1310
    .end local v3    # "bytes":[B
    .end local v23    # "policyInformation":Lorg/apache/harmony/security/x509/PolicyInformation;
    .end local v24    # "policyInformation$iterator":Ljava/util/Iterator;
    .end local v25    # "policyInformations":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/PolicyInformation;>;"
    :cond_2e
    move-object/from16 v0, p0

    #@39d
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    #@39f
    move-object/from16 v28, v0

    #@3a1
    if-eqz v28, :cond_30

    #@3a3
    .line 1311
    const-string/jumbo v28, "2.5.29.30"

    #@3a6
    move-object/from16 v0, p0

    #@3a8
    move-object/from16 v1, v28

    #@3aa
    invoke-direct {v0, v4, v1}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    #@3ad
    move-result-object v3

    #@3ae
    .line 1312
    .restart local v3    # "bytes":[B
    if-eqz v3, :cond_30

    #@3b0
    .line 1316
    :try_start_7
    sget-object v28, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@3b2
    move-object/from16 v0, v28

    #@3b4
    invoke-virtual {v0, v3}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    #@3b7
    move-result-object v18

    #@3b8
    check-cast v18, Lorg/apache/harmony/security/x509/NameConstraints;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    #@3ba
    .line 1321
    .local v18, "nameConstraints":Lorg/apache/harmony/security/x509/NameConstraints;
    move-object/from16 v0, p0

    #@3bc
    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    #@3be
    move-object/from16 v28, v0

    #@3c0
    move-object/from16 v0, v18

    #@3c2
    move-object/from16 v1, v28

    #@3c4
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x509/NameConstraints;->isAcceptable(Ljava/util/List;)Z

    #@3c7
    move-result v28

    #@3c8
    if-nez v28, :cond_30

    #@3ca
    .line 1322
    const/16 v28, 0x0

    #@3cc
    return v28

    #@3cd
    .line 1304
    .end local v18    # "nameConstraints":Lorg/apache/harmony/security/x509/NameConstraints;
    .restart local v24    # "policyInformation$iterator":Ljava/util/Iterator;
    .restart local v25    # "policyInformations":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/PolicyInformation;>;"
    :cond_2f
    const/16 v28, 0x0

    #@3cf
    return v28

    #@3d0
    .line 1305
    .end local v24    # "policyInformation$iterator":Ljava/util/Iterator;
    .end local v25    # "policyInformations":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/PolicyInformation;>;"
    :catch_6
    move-exception v5

    #@3d1
    .line 1307
    .restart local v5    # "e":Ljava/io/IOException;
    const/16 v28, 0x0

    #@3d3
    return v28

    #@3d4
    .line 1317
    .end local v5    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v5

    #@3d5
    .line 1319
    .restart local v5    # "e":Ljava/io/IOException;
    const/16 v28, 0x0

    #@3d7
    return v28

    #@3d8
    .line 1326
    .end local v3    # "bytes":[B
    .end local v5    # "e":Ljava/io/IOException;
    :cond_30
    const/16 v28, 0x1

    #@3da
    return v28
.end method

.method public setAuthorityKeyIdentifier([B)V
    .locals 3
    .param p1, "authorityKeyIdentifier"    # [B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 372
    if-nez p1, :cond_0

    #@4
    .line 373
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    #@6
    .line 374
    return-void

    #@7
    .line 376
    :cond_0
    array-length v0, p1

    #@8
    new-array v0, v0, [B

    #@a
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    #@c
    .line 378
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    #@e
    .line 379
    array-length v1, p1

    #@f
    .line 377
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@12
    .line 371
    return-void
.end method

.method public setBasicConstraints(I)V
    .locals 2
    .param p1, "pathLen"    # I

    #@0
    .prologue
    .line 830
    const/4 v0, -0x2

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 831
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "pathLen < -2"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 833
    :cond_0
    iput p1, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    #@e
    .line 829
    return-void
.end method

.method public setCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 89
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    #@2
    .line 88
    return-void
.end method

.method public setCertificateValid(Ljava/util/Date;)V
    .locals 1
    .param p1, "certificateValid"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 406
    if-nez p1, :cond_0

    #@3
    :goto_0
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    #@5
    .line 405
    return-void

    #@6
    .line 408
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/Date;

    #@c
    goto :goto_0
.end method

.method public setExtendedKeyUsage(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "keyUsage":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@1
    .line 592
    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    #@3
    .line 593
    if-eqz p1, :cond_0

    #@5
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@8
    move-result v3

    #@9
    if-nez v3, :cond_1

    #@b
    .line 594
    :cond_0
    return-void

    #@c
    .line 596
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    #@e
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@11
    .line 597
    .local v0, "key_u":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    .local v2, "usage$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Ljava/lang/String;

    #@21
    .line 598
    .local v1, "usage":Ljava/lang/String;
    invoke-direct {p0, v1}, Ljava/security/cert/X509CertSelector;->checkOID(Ljava/lang/String;)V

    #@24
    .line 599
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@27
    goto :goto_0

    #@28
    .line 601
    .end local v1    # "usage":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@2b
    move-result-object v3

    #@2c
    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    #@2e
    .line 591
    return-void
.end method

.method public setIssuer(Ljava/lang/String;)V
    .locals 3
    .param p1, "issuerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 158
    if-nez p1, :cond_0

    #@3
    .line 159
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@5
    .line 160
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    #@7
    .line 161
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    #@9
    .line 162
    return-void

    #@a
    .line 165
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    #@c
    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    #@f
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@11
    .line 166
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    #@13
    .line 167
    const/4 v1, 0x0

    #@14
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 157
    return-void

    #@17
    .line 168
    :catch_0
    move-exception v0

    #@18
    .line 169
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    #@1a
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1
.end method

.method public setIssuer(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 131
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@3
    .line 132
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    #@5
    .line 133
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    #@7
    .line 130
    return-void
.end method

.method public setIssuer([B)V
    .locals 5
    .param p1, "issuerDN"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 201
    if-nez p1, :cond_0

    #@3
    .line 202
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@5
    .line 203
    return-void

    #@6
    .line 206
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    #@8
    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    #@b
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@d
    .line 207
    const/4 v1, 0x0

    #@e
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    #@10
    .line 208
    array-length v1, p1

    #@11
    new-array v1, v1, [B

    #@13
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    #@15
    .line 209
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    #@17
    array-length v2, p1

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-static {p1, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 200
    return-void

    #@1e
    .line 210
    :catch_0
    move-exception v0

    #@1f
    .line 211
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    #@21
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
.end method

.method public setKeyUsage([Z)V
    .locals 3
    .param p1, "keyUsage"    # [Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 558
    if-nez p1, :cond_0

    #@4
    .line 559
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@6
    .line 560
    return-void

    #@7
    .line 562
    :cond_0
    array-length v0, p1

    #@8
    new-array v0, v0, [Z

    #@a
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@c
    .line 563
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@e
    array-length v1, p1

    #@f
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@12
    .line 557
    return-void
.end method

.method public setMatchAllSubjectAltNames(Z)V
    .locals 0
    .param p1, "matchAllNames"    # Z

    #@0
    .prologue
    .line 626
    iput-boolean p1, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    #@2
    .line 625
    return-void
.end method

.method public setNameConstraints([B)V
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 799
    if-nez p1, :cond_0

    #@3
    :goto_0
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    #@5
    .line 798
    return-void

    #@6
    .line 801
    :cond_0
    sget-object v0, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@8
    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lorg/apache/harmony/security/x509/NameConstraints;

    #@e
    goto :goto_0
.end method

.method public setPathToNames(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 929
    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    #@4
    .line 930
    if-eqz p1, :cond_0

    #@6
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@9
    move-result v4

    #@a
    if-nez v4, :cond_1

    #@c
    .line 931
    :cond_0
    return-void

    #@d
    .line 933
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "name$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_4

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/util/List;

    #@1d
    .line 934
    .local v0, "name":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Ljava/lang/Integer;

    #@23
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v2

    #@27
    .line 935
    .local v2, "tag":I
    const/4 v4, 0x1

    #@28
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    .line 936
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    #@2e
    if-eqz v4, :cond_2

    #@30
    .line 937
    check-cast v3, Ljava/lang/String;

    #@32
    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Ljava/security/cert/X509CertSelector;->addPathToName(ILjava/lang/String;)V

    #@35
    goto :goto_0

    #@36
    .line 938
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v4, v3, [B

    #@38
    if-eqz v4, :cond_3

    #@3a
    .line 939
    check-cast v3, [B

    #@3c
    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Ljava/security/cert/X509CertSelector;->addPathToName(I[B)V

    #@3f
    goto :goto_0

    #@40
    .line 941
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v4, Ljava/io/IOException;

    #@42
    const-string/jumbo v5, "name neither a String nor a byte[]"

    #@45
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@48
    throw v4

    #@49
    .line 928
    .end local v0    # "name":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "tag":I
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method public setPolicy(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "policies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@1
    .line 864
    if-nez p1, :cond_0

    #@3
    .line 865
    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    #@5
    .line 866
    return-void

    #@6
    .line 868
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    #@8
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@b
    move-result v3

    #@c
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    #@f
    .line 869
    .local v2, "pols":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "certPolicyId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/lang/String;

    #@1f
    .line 870
    .local v0, "certPolicyId":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/security/cert/X509CertSelector;->checkOID(Ljava/lang/String;)V

    #@22
    .line 871
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@25
    goto :goto_0

    #@26
    .line 873
    .end local v0    # "certPolicyId":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@29
    move-result-object v3

    #@2a
    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    #@2c
    .line 863
    return-void
.end method

.method public setPrivateKeyValid(Ljava/util/Date;)V
    .locals 1
    .param p1, "privateKeyValid"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 432
    if-nez p1, :cond_0

    #@3
    .line 433
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    #@5
    .line 434
    return-void

    #@6
    .line 436
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/Date;

    #@c
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    #@e
    .line 431
    return-void
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 110
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    #@2
    .line 109
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 3
    .param p1, "subjectDN"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 268
    if-nez p1, :cond_0

    #@3
    .line 269
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@5
    .line 270
    return-void

    #@6
    .line 273
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    #@8
    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    #@b
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 267
    return-void

    #@e
    .line 274
    :catch_0
    move-exception v0

    #@f
    .line 275
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    #@11
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1
.end method

.method public setSubject(Ljavax/security/auth/x500/X500Principal;)V
    .locals 0
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 243
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@2
    .line 242
    return-void
.end method

.method public setSubject([B)V
    .locals 3
    .param p1, "subjectDN"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 304
    if-nez p1, :cond_0

    #@3
    .line 305
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@5
    .line 306
    return-void

    #@6
    .line 309
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    #@8
    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    #@b
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 303
    return-void

    #@e
    .line 310
    :catch_0
    move-exception v0

    #@f
    .line 311
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    #@11
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1
.end method

.method public setSubjectAlternativeNames(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 662
    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@4
    .line 663
    if-eqz p1, :cond_0

    #@6
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@9
    move-result v4

    #@a
    if-nez v4, :cond_1

    #@c
    .line 664
    :cond_0
    return-void

    #@d
    .line 666
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "name$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_4

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/util/List;

    #@1d
    .line 667
    .local v0, "name":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Ljava/lang/Integer;

    #@23
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v2

    #@27
    .line 668
    .local v2, "tag":I
    const/4 v4, 0x1

    #@28
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    .line 669
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    #@2e
    if-eqz v4, :cond_2

    #@30
    .line 670
    check-cast v3, Ljava/lang/String;

    #@32
    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Ljava/security/cert/X509CertSelector;->addSubjectAlternativeName(ILjava/lang/String;)V

    #@35
    goto :goto_0

    #@36
    .line 671
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v4, v3, [B

    #@38
    if-eqz v4, :cond_3

    #@3a
    .line 672
    check-cast v3, [B

    #@3c
    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Ljava/security/cert/X509CertSelector;->addSubjectAlternativeName(I[B)V

    #@3f
    goto :goto_0

    #@40
    .line 674
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v4, Ljava/io/IOException;

    #@42
    const-string/jumbo v5, "name neither a String nor a byte[]"

    #@45
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@48
    throw v4

    #@49
    .line 661
    .end local v0    # "name":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "tag":I
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method public setSubjectKeyIdentifier([B)V
    .locals 3
    .param p1, "subjectKeyIdentifier"    # [B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 340
    if-nez p1, :cond_0

    #@4
    .line 341
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    #@6
    .line 342
    return-void

    #@7
    .line 344
    :cond_0
    array-length v0, p1

    #@8
    new-array v0, v0, [B

    #@a
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    #@c
    .line 345
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    #@e
    .line 346
    array-length v1, p1

    #@f
    .line 345
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@12
    .line 339
    return-void
.end method

.method public setSubjectPublicKey(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 513
    if-nez p1, :cond_0

    #@3
    :goto_0
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    #@5
    .line 514
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    #@7
    .line 512
    return-void

    #@8
    .line 513
    :cond_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public setSubjectPublicKey([B)V
    .locals 3
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 527
    if-nez p1, :cond_0

    #@4
    .line 528
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    #@6
    .line 529
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    #@8
    .line 530
    return-void

    #@9
    .line 532
    :cond_0
    array-length v0, p1

    #@a
    new-array v0, v0, [B

    #@c
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    #@e
    .line 533
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    #@10
    array-length v1, p1

    #@11
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@14
    .line 535
    sget-object v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@16
    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    #@1c
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getPublicKey()Ljava/security/PublicKey;

    #@1f
    move-result-object v0

    #@20
    .line 534
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    #@22
    .line 526
    return-void
.end method

.method public setSubjectPublicKeyAlgID(Ljava/lang/String;)V
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 488
    if-nez p1, :cond_0

    #@3
    .line 489
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    #@5
    .line 490
    return-void

    #@6
    .line 492
    :cond_0
    invoke-direct {p0, p1}, Ljava/security/cert/X509CertSelector;->checkOID(Ljava/lang/String;)V

    #@9
    .line 493
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    #@b
    .line 487
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    const/16 v9, 0x9

    #@2
    .line 999
    new-instance v5, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 1000
    .local v5, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "X509CertSelector: \n["

    #@a
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 1001
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    #@f
    if-eqz v7, :cond_0

    #@11
    .line 1002
    const-string/jumbo v7, "\n  certificateEquals: "

    #@14
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v7

    #@18
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    #@1a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    .line 1004
    :cond_0
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    #@1f
    if-eqz v7, :cond_1

    #@21
    .line 1005
    const-string/jumbo v7, "\n  serialNumber: "

    #@24
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    #@2a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    .line 1007
    :cond_1
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@2f
    if-eqz v7, :cond_2

    #@31
    .line 1008
    const-string/jumbo v7, "\n  issuer: "

    #@34
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v7

    #@38
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@3a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    .line 1010
    :cond_2
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@3f
    if-eqz v7, :cond_3

    #@41
    .line 1011
    const-string/jumbo v7, "\n  subject: "

    #@44
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v7

    #@48
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    #@4a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    .line 1013
    :cond_3
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    #@4f
    if-eqz v7, :cond_4

    #@51
    .line 1014
    const-string/jumbo v7, "\n  subjectKeyIdentifier: "

    #@54
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v7

    #@58
    .line 1015
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    #@5a
    invoke-static {v8}, Lorg/apache/harmony/security/utils/Array;->getBytesAsString([B)Ljava/lang/String;

    #@5d
    move-result-object v8

    #@5e
    .line 1014
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    .line 1017
    :cond_4
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    #@63
    if-eqz v7, :cond_5

    #@65
    .line 1018
    const-string/jumbo v7, "\n  authorityKeyIdentifier: "

    #@68
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v7

    #@6c
    .line 1019
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    #@6e
    invoke-static {v8}, Lorg/apache/harmony/security/utils/Array;->getBytesAsString([B)Ljava/lang/String;

    #@71
    move-result-object v8

    #@72
    .line 1018
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    .line 1021
    :cond_5
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    #@77
    if-eqz v7, :cond_6

    #@79
    .line 1022
    const-string/jumbo v7, "\n  certificateValid: "

    #@7c
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v7

    #@80
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    #@82
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@85
    .line 1024
    :cond_6
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    #@87
    if-eqz v7, :cond_7

    #@89
    .line 1025
    const-string/jumbo v7, "\n  subjectPublicKeyAlgID: "

    #@8c
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v7

    #@90
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    #@92
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    .line 1027
    :cond_7
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    #@97
    if-eqz v7, :cond_8

    #@99
    .line 1028
    const-string/jumbo v7, "\n  privateKeyValid: "

    #@9c
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v7

    #@a0
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    #@a2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a5
    .line 1030
    :cond_8
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    #@a7
    if-eqz v7, :cond_9

    #@a9
    .line 1031
    const-string/jumbo v7, "\n  subjectPublicKey: "

    #@ac
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v7

    #@b0
    .line 1032
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    #@b2
    invoke-static {v8}, Lorg/apache/harmony/security/utils/Array;->getBytesAsString([B)Ljava/lang/String;

    #@b5
    move-result-object v8

    #@b6
    .line 1031
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    .line 1034
    :cond_9
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@bb
    if-eqz v7, :cond_c

    #@bd
    .line 1035
    const-string/jumbo v7, "\n  keyUsage: \n  ["

    #@c0
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    .line 1036
    new-array v3, v9, [Ljava/lang/String;

    #@c5
    .line 1037
    const-string/jumbo v7, "digitalSignature"

    #@c8
    const/4 v8, 0x0

    #@c9
    aput-object v7, v3, v8

    #@cb
    const-string/jumbo v7, "nonRepudiation"

    #@ce
    const/4 v8, 0x1

    #@cf
    aput-object v7, v3, v8

    #@d1
    const-string/jumbo v7, "keyEncipherment"

    #@d4
    const/4 v8, 0x2

    #@d5
    aput-object v7, v3, v8

    #@d7
    .line 1038
    const-string/jumbo v7, "dataEncipherment"

    #@da
    const/4 v8, 0x3

    #@db
    aput-object v7, v3, v8

    #@dd
    const-string/jumbo v7, "keyAgreement"

    #@e0
    const/4 v8, 0x4

    #@e1
    aput-object v7, v3, v8

    #@e3
    const-string/jumbo v7, "keyCertSign"

    #@e6
    const/4 v8, 0x5

    #@e7
    aput-object v7, v3, v8

    #@e9
    const-string/jumbo v7, "cRLSign"

    #@ec
    const/4 v8, 0x6

    #@ed
    aput-object v7, v3, v8

    #@ef
    .line 1039
    const-string/jumbo v7, "encipherOnly"

    #@f2
    const/4 v8, 0x7

    #@f3
    aput-object v7, v3, v8

    #@f5
    const-string/jumbo v7, "decipherOnly"

    #@f8
    const/16 v8, 0x8

    #@fa
    aput-object v7, v3, v8

    #@fc
    .line 1041
    .local v3, "kuNames":[Ljava/lang/String;
    const/4 v2, 0x0

    #@fd
    .local v2, "i":I
    :goto_0
    if-ge v2, v9, :cond_b

    #@ff
    .line 1042
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    #@101
    aget-boolean v7, v7, v2

    #@103
    if-eqz v7, :cond_a

    #@105
    .line 1043
    const-string/jumbo v7, "\n    "

    #@108
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v7

    #@10c
    aget-object v8, v3, v2

    #@10e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    .line 1041
    :cond_a
    add-int/lit8 v2, v2, 0x1

    #@113
    goto :goto_0

    #@114
    .line 1046
    :cond_b
    const-string/jumbo v7, "\n  ]"

    #@117
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    .line 1048
    .end local v2    # "i":I
    .end local v3    # "kuNames":[Ljava/lang/String;
    :cond_c
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    #@11c
    if-eqz v7, :cond_d

    #@11e
    .line 1049
    const-string/jumbo v7, "\n  extendedKeyUsage: "

    #@121
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v7

    #@125
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    #@127
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12a
    move-result-object v8

    #@12b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    .line 1051
    :cond_d
    const-string/jumbo v7, "\n  matchAllNames: "

    #@131
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v7

    #@135
    iget-boolean v8, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    #@137
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@13a
    .line 1052
    const-string/jumbo v7, "\n  pathLen: "

    #@13d
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v7

    #@141
    iget v8, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    #@143
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@146
    .line 1053
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@148
    if-eqz v7, :cond_10

    #@14a
    .line 1054
    const-string/jumbo v7, "\n  subjectAltNames:  \n  ["

    #@14d
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    .line 1055
    const/4 v2, 0x0

    #@151
    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v9, :cond_f

    #@153
    .line 1056
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    #@155
    aget-object v4, v7, v2

    #@157
    .line 1057
    .local v4, "names":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    if-eqz v4, :cond_e

    #@159
    .line 1058
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@15c
    move-result v6

    #@15d
    .line 1059
    .local v6, "size":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@160
    move-result-object v1

    #@161
    .local v1, "generalName$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@164
    move-result v7

    #@165
    if-eqz v7, :cond_e

    #@167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16a
    move-result-object v0

    #@16b
    check-cast v0, Lorg/apache/harmony/security/x509/GeneralName;

    #@16d
    .line 1060
    .local v0, "generalName":Lorg/apache/harmony/security/x509/GeneralName;
    const-string/jumbo v7, "\n    "

    #@170
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v7

    #@174
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralName;->toString()Ljava/lang/String;

    #@177
    move-result-object v8

    #@178
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    goto :goto_2

    #@17c
    .line 1055
    .end local v0    # "generalName":Lorg/apache/harmony/security/x509/GeneralName;
    .end local v1    # "generalName$iterator":Ljava/util/Iterator;
    .end local v6    # "size":I
    :cond_e
    add-int/lit8 v2, v2, 0x1

    #@17e
    goto :goto_1

    #@17f
    .line 1064
    .end local v4    # "names":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    :cond_f
    const-string/jumbo v7, "\n  ]"

    #@182
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    .line 1066
    .end local v2    # "i":I
    :cond_10
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    #@187
    if-eqz v7, :cond_11

    #@189
    .line 1068
    :cond_11
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    #@18b
    if-eqz v7, :cond_12

    #@18d
    .line 1069
    const-string/jumbo v7, "\n  policies: "

    #@190
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v7

    #@194
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    #@196
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@199
    move-result-object v8

    #@19a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    .line 1071
    :cond_12
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    #@19f
    if-eqz v7, :cond_13

    #@1a1
    .line 1072
    const-string/jumbo v7, "\n  pathToNames:  \n  ["

    #@1a4
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    .line 1073
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    #@1a9
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1ac
    move-result-object v1

    #@1ad
    .restart local v1    # "generalName$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b0
    move-result v7

    #@1b1
    if-eqz v7, :cond_13

    #@1b3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b6
    move-result-object v0

    #@1b7
    check-cast v0, Lorg/apache/harmony/security/x509/GeneralName;

    #@1b9
    .line 1074
    .restart local v0    # "generalName":Lorg/apache/harmony/security/x509/GeneralName;
    const-string/jumbo v7, "\n    "

    #@1bc
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v7

    #@1c0
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralName;->toString()Ljava/lang/String;

    #@1c3
    move-result-object v8

    #@1c4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c7
    goto :goto_3

    #@1c8
    .line 1077
    .end local v0    # "generalName":Lorg/apache/harmony/security/x509/GeneralName;
    .end local v1    # "generalName$iterator":Ljava/util/Iterator;
    :cond_13
    const-string/jumbo v7, "\n]"

    #@1cb
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ce
    .line 1078
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d1
    move-result-object v7

    #@1d2
    return-object v7
.end method
