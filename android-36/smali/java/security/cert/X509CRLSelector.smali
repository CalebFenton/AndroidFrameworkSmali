.class public Ljava/security/cert/X509CRLSelector;
.super Ljava/lang/Object;
.source "X509CRLSelector.java"

# interfaces
.implements Ljava/security/cert/CRLSelector;


# static fields
.field private static final greylist-max-o debug:Lsun/security/util/Debug;


# instance fields
.field private greylist-max-o certChecking:Ljava/security/cert/X509Certificate;

.field private greylist-max-o dateAndTime:Ljava/util/Date;

.field private greylist-max-o issuerNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o issuerX500Principals:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o maxCRL:Ljava/math/BigInteger;

.field private greylist-max-o minCRL:Ljava/math/BigInteger;

.field private greylist-max-o skew:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 76
    invoke-static {}, Ljava/security/cert/CertPathHelperImpl;->initialize()V

    .line 79
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/security/cert/X509CRLSelector;->skew:J

    .line 92
    return-void
.end method

.method private greylist-max-o addIssuerNameInternal(Ljava/lang/Object;Ljavax/security/auth/x500/X500Principal;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .line 290
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    if-nez v0, :cond_b

    .line 291
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    .line 293
    :cond_b
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    if-nez v0, :cond_16

    .line 294
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    .line 296
    :cond_16
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method private static greylist-max-o cloneAndCheckIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 315
    .local v0, "namesCopy":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 316
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 317
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 318
    .local v2, "nameObject":Ljava/lang/Object;
    instance-of v3, v2, [B

    if-nez v3, :cond_24

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1c

    goto :goto_24

    .line 320
    :cond_1c
    new-instance v3, Ljava/io/IOException;

    const-string v4, "name not byte array or String"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 321
    :cond_24
    :goto_24
    instance-of v3, v2, [B

    if-eqz v3, :cond_33

    .line 322
    move-object v3, v2

    check-cast v3, [B

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 324
    :cond_33
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 325
    .end local v2    # "nameObject":Ljava/lang/Object;
    :goto_36
    goto :goto_9

    .line 326
    :cond_37
    return-object v0
.end method

.method private static greylist-max-o cloneIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 346
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :try_start_0
    invoke-static {p0}, Ljava/security/cert/X509CRLSelector;->cloneAndCheckIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 347
    :catch_5
    move-exception v0

    .line 348
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static greylist-max-o parseIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 367
    .local v0, "x500Principals":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljavax/security/auth/x500/X500Principal;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 368
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 369
    .local v2, "nameObject":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_27

    .line 370
    new-instance v3, Lsun/security/x509/X500Name;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 373
    :cond_27
    :try_start_27
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    move-object v4, v2

    check-cast v4, [B

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_32} :catch_34

    .line 376
    nop

    .line 378
    .end local v2    # "nameObject":Ljava/lang/Object;
    :goto_33
    goto :goto_9

    .line 374
    .restart local v2    # "nameObject":Ljava/lang/Object;
    :catch_34
    move-exception v3

    .line 375
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Invalid name"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/io/IOException;

    throw v4

    .line 379
    .end local v1    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .end local v2    # "nameObject":Ljava/lang/Object;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_43
    return-object v0
.end method


# virtual methods
.method public whitelist test-api addIssuer(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;

    .line 223
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/security/cert/X509CRLSelector;->addIssuerNameInternal(Ljava/lang/Object;Ljavax/security/auth/x500/X500Principal;)V

    .line 224
    return-void
.end method

.method public whitelist test-api addIssuerName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    new-instance v0, Lsun/security/x509/X500Name;

    invoke-direct {v0, p1}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/security/cert/X509CRLSelector;->addIssuerNameInternal(Ljava/lang/Object;Ljavax/security/auth/x500/X500Principal;)V

    .line 248
    return-void
.end method

.method public whitelist test-api addIssuerName([B)V
    .registers 4
    .param p1, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lsun/security/x509/X500Name;

    invoke-direct {v1, p1}, Lsun/security/x509/X500Name;-><init>([B)V

    invoke-virtual {v1}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/security/cert/X509CRLSelector;->addIssuerNameInternal(Ljava/lang/Object;Ljavax/security/auth/x500/X500Principal;)V

    .line 277
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    .line 705
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRLSelector;

    .line 706
    .local v0, "copy":Ljava/security/cert/X509CRLSelector;
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    if-eqz v1, :cond_1c

    .line 707
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    .line 709
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;
    :try_end_1c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 712
    :cond_1c
    return-object v0

    .line 713
    .end local v0    # "copy":Ljava/security/cert/X509CRLSelector;
    :catch_1d
    move-exception v0

    .line 715
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api getCertificateChecking()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 559
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->certChecking:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public whitelist test-api getDateAndTime()Ljava/util/Date;
    .registers 2

    .line 543
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    if-nez v0, :cond_6

    .line 544
    const/4 v0, 0x0

    return-object v0

    .line 545
    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public whitelist test-api getIssuerNames()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 499
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    if-nez v0, :cond_6

    .line 500
    const/4 v0, 0x0

    return-object v0

    .line 502
    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/security/cert/X509CRLSelector;->cloneIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIssuers()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    if-nez v0, :cond_6

    .line 470
    const/4 v0, 0x0

    return-object v0

    .line 472
    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getMaxCRL()Ljava/math/BigInteger;
    .registers 2

    .line 525
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getMinCRL()Ljava/math/BigInteger;
    .registers 2

    .line 513
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api match(Ljava/security/cert/CRL;)Z
    .registers 13
    .param p1, "crl"    # Ljava/security/cert/CRL;

    .line 597
    instance-of v0, p1, Ljava/security/cert/X509CRL;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 598
    return v1

    .line 600
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 603
    .local v0, "xcrl":Ljava/security/cert/X509CRL;
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    if-eqz v2, :cond_3c

    .line 604
    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 605
    .local v2, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 606
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/security/auth/x500/X500Principal;>;"
    const/4 v4, 0x0

    .line 607
    .local v4, "found":Z
    :cond_18
    :goto_18
    if-nez v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 608
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v5, v2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 609
    const/4 v4, 0x1

    goto :goto_18

    .line 612
    :cond_2e
    if-nez v4, :cond_3c

    .line 613
    sget-object v5, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_3b

    .line 614
    sget-object v5, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string v6, "X509CRLSelector.match: issuer DNs don\'t match"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 617
    :cond_3b
    return v1

    .line 621
    .end local v2    # "issuer":Ljavax/security/auth/x500/X500Principal;
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/security/auth/x500/X500Principal;>;"
    .end local v4    # "found":Z
    :cond_3c
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    if-nez v2, :cond_44

    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    if-eqz v2, :cond_9e

    .line 623
    :cond_44
    const-string v2, "2.5.29.20"

    invoke-virtual {v0, v2}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 624
    .local v2, "crlNumExtVal":[B
    if-nez v2, :cond_57

    .line 625
    sget-object v3, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_57

    .line 626
    sget-object v3, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string v4, "X509CRLSelector.match: no CRLNumber"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 631
    :cond_57
    :try_start_57
    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-direct {v3, v2}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 632
    .local v3, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v4

    .line 633
    .local v4, "encoded":[B
    new-instance v5, Lsun/security/x509/CRLNumberExtension;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v4}, Lsun/security/x509/CRLNumberExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    .line 635
    .local v5, "crlNumExt":Lsun/security/x509/CRLNumberExtension;
    const-string v6, "value"

    invoke-virtual {v5, v6}, Lsun/security/x509/CRLNumberExtension;->get(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_6d} :catch_fc

    .line 642
    .end local v3    # "in":Lsun/security/util/DerInputStream;
    .end local v4    # "encoded":[B
    .end local v5    # "crlNumExt":Lsun/security/x509/CRLNumberExtension;
    .local v6, "crlNum":Ljava/math/BigInteger;
    nop

    .line 645
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    if-eqz v3, :cond_86

    .line 646
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_86

    .line 647
    sget-object v3, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_85

    .line 648
    sget-object v3, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string v4, "X509CRLSelector.match: CRLNumber too small"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 650
    :cond_85
    return v1

    .line 655
    :cond_86
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    if-eqz v3, :cond_9e

    .line 656
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-lez v3, :cond_9e

    .line 657
    sget-object v3, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_9d

    .line 658
    sget-object v3, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string v4, "X509CRLSelector.match: CRLNumber too large"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 660
    :cond_9d
    return v1

    .line 667
    .end local v2    # "crlNumExtVal":[B
    .end local v6    # "crlNum":Ljava/math/BigInteger;
    :cond_9e
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    if-eqz v2, :cond_fa

    .line 668
    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v2

    .line 669
    .local v2, "crlThisUpdate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v3

    .line 670
    .local v3, "nextUpdate":Ljava/util/Date;
    if-nez v3, :cond_b8

    .line 671
    sget-object v4, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_b7

    .line 672
    sget-object v4, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string v5, "X509CRLSelector.match: nextUpdate null"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 674
    :cond_b7
    return v1

    .line 676
    :cond_b8
    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    .line 677
    .local v4, "nowPlusSkew":Ljava/util/Date;
    iget-object v5, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    .line 678
    .local v5, "nowMinusSkew":Ljava/util/Date;
    iget-wide v6, p0, Ljava/security/cert/X509CRLSelector;->skew:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_e2

    .line 679
    new-instance v6, Ljava/util/Date;

    iget-object v7, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    iget-wide v9, p0, Ljava/security/cert/X509CRLSelector;->skew:J

    add-long/2addr v7, v9

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    move-object v4, v6

    .line 680
    new-instance v6, Ljava/util/Date;

    iget-object v7, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    iget-wide v9, p0, Ljava/security/cert/X509CRLSelector;->skew:J

    sub-long/2addr v7, v9

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    move-object v5, v6

    .line 686
    :cond_e2
    invoke-virtual {v5, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-nez v6, :cond_ee

    .line 687
    invoke-virtual {v4, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_fa

    .line 688
    :cond_ee
    sget-object v6, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_f9

    .line 689
    sget-object v6, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string v7, "X509CRLSelector.match: update out-of-range"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 691
    :cond_f9
    return v1

    .line 695
    .end local v2    # "crlThisUpdate":Ljava/util/Date;
    .end local v3    # "nextUpdate":Ljava/util/Date;
    .end local v4    # "nowPlusSkew":Ljava/util/Date;
    .end local v5    # "nowMinusSkew":Ljava/util/Date;
    :cond_fa
    const/4 v1, 0x1

    return v1

    .line 636
    .local v2, "crlNumExtVal":[B
    :catch_fc
    move-exception v3

    .line 637
    .local v3, "ex":Ljava/io/IOException;
    sget-object v4, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_108

    .line 638
    sget-object v4, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string v5, "X509CRLSelector.match: exception in decoding CRL number"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 641
    :cond_108
    return v1
.end method

.method public whitelist test-api setCertificateChecking(Ljava/security/cert/X509Certificate;)V
    .registers 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 451
    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->certChecking:Ljava/security/cert/X509Certificate;

    .line 452
    return-void
.end method

.method public whitelist test-api setDateAndTime(Ljava/util/Date;)V
    .registers 5
    .param p1, "dateAndTime"    # Ljava/util/Date;

    .line 422
    if-nez p1, :cond_6

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    goto :goto_11

    .line 425
    :cond_6
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    .line 426
    :goto_11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/security/cert/X509CRLSelector;->skew:J

    .line 427
    return-void
.end method

.method greylist-max-o setDateAndTime(Ljava/util/Date;J)V
    .registers 7
    .param p1, "dateAndTime"    # Ljava/util/Date;
    .param p2, "skew"    # J

    .line 434
    nop

    .line 435
    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_e

    :cond_5
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_e
    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    .line 436
    iput-wide p2, p0, Ljava/security/cert/X509CRLSelector;->skew:J

    .line 437
    return-void
.end method

.method public whitelist test-api setIssuerNames(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p1, :cond_16

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_16

    .line 202
    :cond_9
    invoke-static {p1}, Ljava/security/cert/X509CRLSelector;->cloneAndCheckIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object v0

    .line 204
    .local v0, "tempNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-static {v0}, Ljava/security/cert/X509CRLSelector;->parseIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    .line 205
    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    goto :goto_1b

    .line 199
    .end local v0    # "tempNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    :cond_16
    :goto_16
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    .line 200
    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    .line 207
    :goto_1b
    return-void
.end method

.method public whitelist test-api setIssuers(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p1, "issuers":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/security/auth/x500/X500Principal;>;"
    if-eqz p1, :cond_33

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_33

    .line 127
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    .line 129
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/security/auth/x500/X500Principal;

    .line 130
    .local v1, "p":Ljavax/security/auth/x500/X500Principal;
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v1    # "p":Ljavax/security/auth/x500/X500Principal;
    goto :goto_1d

    .line 123
    :cond_33
    :goto_33
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    .line 124
    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    .line 133
    :cond_38
    return-void
.end method

.method public whitelist test-api setMaxCRLNumber(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "maxCRL"    # Ljava/math/BigInteger;

    .line 403
    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    .line 404
    return-void
.end method

.method public whitelist test-api setMinCRLNumber(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "minCRL"    # Ljava/math/BigInteger;

    .line 391
    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    .line 392
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "X509CRLSelector: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    const-string v2, "\n"

    if-eqz v1, :cond_40

    .line 572
    const-string v1, "  IssuerNames:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 574
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 577
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_40
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    if-eqz v1, :cond_60

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  minCRLNumber: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_60
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    if-eqz v1, :cond_80

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  maxCRLNumber: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    :cond_80
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    if-eqz v1, :cond_a0

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  dateAndTime: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    :cond_a0
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->certChecking:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_c0

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Certificate being checked: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->certChecking:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :cond_c0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
