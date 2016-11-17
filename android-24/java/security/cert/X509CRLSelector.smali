.class public Ljava/security/cert/X509CRLSelector;
.super Ljava/lang/Object;
.source "X509CRLSelector.java"

# interfaces
.implements Ljava/security/cert/CRLSelector;


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private certChecking:Ljava/security/cert/X509Certificate;

.field private dateAndTime:Ljava/util/Date;

.field private issuerNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private issuerX500Principals:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field

.field private maxCRL:Ljava/math/BigInteger;

.field private minCRL:Ljava/math/BigInteger;

.field private skew:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 76
    invoke-static {}, Ljava/security/cert/CertPathHelperImpl;->initialize()V

    #@3
    .line 79
    const-string/jumbo v0, "certpath"

    #@6
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    #@c
    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 86
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Ljava/security/cert/X509CRLSelector;->skew:J

    #@7
    .line 92
    return-void
.end method

.method private addIssuerNameInternal(Ljava/lang/Object;Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "principal"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 291
    new-instance v0, Ljava/util/HashSet;

    #@6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@9
    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    #@b
    .line 293
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 294
    new-instance v0, Ljava/util/HashSet;

    #@11
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@14
    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    #@16
    .line 296
    :cond_1
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    #@18
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1b
    .line 297
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    #@1d
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@20
    .line 289
    return-void
.end method

.method private static cloneAndCheckIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 314
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v2, Ljava/util/HashSet;

    #@2
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 315
    .local v2, "namesCopy":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v0

    #@9
    .line 316
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_3

    #@f
    .line 317
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    .line 318
    .local v1, "nameObject":Ljava/lang/Object;
    instance-of v3, v1, [B

    #@15
    if-nez v3, :cond_0

    #@17
    .line 319
    instance-of v3, v1, Ljava/lang/String;

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 321
    :cond_0
    instance-of v3, v1, [B

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 322
    nop

    #@20
    nop

    #@21
    .end local v1    # "nameObject":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@28
    goto :goto_0

    #@29
    .line 320
    .restart local v1    # "nameObject":Ljava/lang/Object;
    :cond_1
    new-instance v3, Ljava/io/IOException;

    #@2b
    const-string/jumbo v4, "name not byte array or String"

    #@2e
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@31
    throw v3

    #@32
    .line 324
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@35
    goto :goto_0

    #@36
    .line 326
    .end local v1    # "nameObject":Ljava/lang/Object;
    :cond_3
    return-object v2
.end method

.method private static cloneIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 346
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :try_start_0
    invoke-static {p0}, Ljava/security/cert/X509CRLSelector;->cloneAndCheckIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 347
    :catch_0
    move-exception v0

    #@6
    .line 348
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@b
    throw v1
.end method

.method private static parseIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 366
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/HashSet;

    #@2
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 367
    .local v3, "x500Principals":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljavax/security/auth/x500/X500Principal;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .local v2, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_1

    #@f
    .line 368
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    .line 369
    .local v1, "nameObject":Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/String;

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 370
    new-instance v4, Lsun/security/x509/X500Name;

    #@19
    nop

    #@1a
    nop

    #@1b
    .end local v1    # "nameObject":Ljava/lang/Object;
    invoke-direct {v4, v1}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    #@1e
    invoke-virtual {v4}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@25
    goto :goto_0

    #@26
    .line 373
    .restart local v1    # "nameObject":Ljava/lang/Object;
    :cond_0
    :try_start_0
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    #@28
    check-cast v1, [B

    #@2a
    .end local v1    # "nameObject":Ljava/lang/Object;
    invoke-direct {v4, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    #@2d
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    goto :goto_0

    #@31
    .line 374
    :catch_0
    move-exception v0

    #@32
    .line 375
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/IOException;

    #@34
    const-string/jumbo v5, "Invalid name"

    #@37
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3a
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@3d
    move-result-object v4

    #@3e
    check-cast v4, Ljava/io/IOException;

    #@40
    throw v4

    #@41
    .line 379
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    return-object v3
.end method


# virtual methods
.method public addIssuer(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 223
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Ljava/security/cert/X509CRLSelector;->addIssuerNameInternal(Ljava/lang/Object;Ljavax/security/auth/x500/X500Principal;)V

    #@7
    .line 222
    return-void
.end method

.method public addIssuerName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 247
    new-instance v0, Lsun/security/x509/X500Name;

    #@2
    invoke-direct {v0, p1}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@8
    move-result-object v0

    #@9
    invoke-direct {p0, p1, v0}, Ljava/security/cert/X509CRLSelector;->addIssuerNameInternal(Ljava/lang/Object;Ljavax/security/auth/x500/X500Principal;)V

    #@c
    .line 246
    return-void
.end method

.method public addIssuerName([B)V
    .locals 2
    .param p1, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 276
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lsun/security/x509/X500Name;

    #@6
    invoke-direct {v1, p1}, Lsun/security/x509/X500Name;-><init>([B)V

    #@9
    invoke-virtual {v1}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v0, v1}, Ljava/security/cert/X509CRLSelector;->addIssuerNameInternal(Ljava/lang/Object;Ljavax/security/auth/x500/X500Principal;)V

    #@10
    .line 274
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 701
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/security/cert/X509CRLSelector;

    #@6
    .line 702
    .local v0, "copy":Ljava/security/cert/X509CRLSelector;
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 704
    new-instance v2, Ljava/util/HashSet;

    #@c
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    #@e
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@11
    .line 703
    iput-object v2, v0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    #@13
    .line 706
    new-instance v2, Ljava/util/HashSet;

    #@15
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    #@17
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@1a
    .line 705
    iput-object v2, v0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 708
    :cond_0
    return-object v0

    #@1d
    .line 709
    .end local v0    # "copy":Ljava/security/cert/X509CRLSelector;
    :catch_0
    move-exception v1

    #@1e
    .line 711
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    #@20
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@27
    throw v2
.end method

.method public getCertificateChecking()Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 559
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->certChecking:Ljava/security/cert/X509Certificate;

    #@2
    return-object v0
.end method

.method public getDateAndTime()Ljava/util/Date;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 543
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 544
    return-object v1

    #@6
    .line 545
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    #@8
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/util/Date;

    #@e
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
    .line 499
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 500
    return-object v1

    #@6
    .line 502
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    #@8
    invoke-static {v0}, Ljava/security/cert/X509CRLSelector;->cloneIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getIssuers()Ljava/util/Collection;
    .locals 2
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
    const/4 v1, 0x0

    #@1
    .line 469
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 470
    return-object v1

    #@6
    .line 472
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    #@8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getMaxCRL()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 525
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getMinCRL()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 513
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .locals 20
    .param p1, "crl"    # Ljava/security/cert/CRL;

    #@0
    .prologue
    .line 597
    move-object/from16 v0, p1

    #@2
    instance-of v0, v0, Ljava/security/cert/X509CRL;

    #@4
    move/from16 v16, v0

    #@6
    if-nez v16, :cond_0

    #@8
    .line 598
    const/16 v16, 0x0

    #@a
    return v16

    #@b
    :cond_0
    move-object/from16 v15, p1

    #@d
    .line 600
    check-cast v15, Ljava/security/cert/X509CRL;

    #@f
    .line 603
    .local v15, "xcrl":Ljava/security/cert/X509CRL;
    move-object/from16 v0, p0

    #@11
    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    #@13
    move-object/from16 v16, v0

    #@15
    if-eqz v16, :cond_4

    #@17
    .line 604
    invoke-virtual {v15}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@1a
    move-result-object v11

    #@1b
    .line 605
    .local v11, "issuer":Ljavax/security/auth/x500/X500Principal;
    move-object/from16 v0, p0

    #@1d
    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    #@1f
    move-object/from16 v16, v0

    #@21
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v9

    #@25
    .line 606
    .local v9, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/security/auth/x500/X500Principal;>;"
    const/4 v8, 0x0

    #@26
    .line 607
    .local v8, "found":Z
    :cond_1
    :goto_0
    if-nez v8, :cond_2

    #@28
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v16

    #@2c
    if-eqz v16, :cond_2

    #@2e
    .line 608
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v16

    #@32
    check-cast v16, Ljavax/security/auth/x500/X500Principal;

    #@34
    move-object/from16 v0, v16

    #@36
    invoke-virtual {v0, v11}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v16

    #@3a
    if-eqz v16, :cond_1

    #@3c
    .line 609
    const/4 v8, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 612
    :cond_2
    if-nez v8, :cond_4

    #@40
    .line 613
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    #@42
    if-eqz v16, :cond_3

    #@44
    .line 614
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    #@46
    const-string/jumbo v17, "X509CRLSelector.match: issuer DNs don\'t match"

    #@49
    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@4c
    .line 617
    :cond_3
    const/16 v16, 0x0

    #@4e
    return v16

    #@4f
    .line 621
    .end local v8    # "found":Z
    .end local v9    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/security/auth/x500/X500Principal;>;"
    .end local v11    # "issuer":Ljavax/security/auth/x500/X500Principal;
    :cond_4
    move-object/from16 v0, p0

    #@51
    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    #@53
    move-object/from16 v16, v0

    #@55
    if-nez v16, :cond_5

    #@57
    move-object/from16 v0, p0

    #@59
    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    #@5b
    move-object/from16 v16, v0

    #@5d
    if-eqz v16, :cond_b

    #@5f
    .line 623
    :cond_5
    const-string/jumbo v16, "2.5.29.20"

    #@62
    invoke-virtual/range {v15 .. v16}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    #@65
    move-result-object v4

    #@66
    .line 624
    .local v4, "crlNumExtVal":[B
    if-nez v4, :cond_6

    #@68
    .line 625
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    #@6a
    if-eqz v16, :cond_6

    #@6c
    .line 626
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    #@6e
    const-string/jumbo v17, "X509CRLSelector.match: no CRLNumber"

    #@71
    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@74
    .line 631
    :cond_6
    :try_start_0
    new-instance v10, Lsun/security/util/DerInputStream;

    #@76
    invoke-direct {v10, v4}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@79
    .line 632
    .local v10, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v10}, Lsun/security/util/DerInputStream;->getOctetString()[B

    #@7c
    move-result-object v6

    #@7d
    .line 634
    .local v6, "encoded":[B
    new-instance v3, Lsun/security/x509/CRLNumberExtension;

    #@7f
    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@81
    move-object/from16 v0, v16

    #@83
    invoke-direct {v3, v0, v6}, Lsun/security/x509/CRLNumberExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    #@86
    .line 635
    .local v3, "crlNumExt":Lsun/security/x509/CRLNumberExtension;
    const-string/jumbo v16, "value"

    #@89
    move-object/from16 v0, v16

    #@8b
    invoke-virtual {v3, v0}, Lsun/security/x509/CRLNumberExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@8e
    move-result-object v2

    #@8f
    check-cast v2, Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@91
    .line 645
    .local v2, "crlNum":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    #@95
    move-object/from16 v16, v0

    #@97
    if-eqz v16, :cond_9

    #@99
    .line 646
    move-object/from16 v0, p0

    #@9b
    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    #@9d
    move-object/from16 v16, v0

    #@9f
    move-object/from16 v0, v16

    #@a1
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@a4
    move-result v16

    #@a5
    if-gez v16, :cond_9

    #@a7
    .line 647
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    #@a9
    if-eqz v16, :cond_7

    #@ab
    .line 648
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    #@ad
    const-string/jumbo v17, "X509CRLSelector.match: CRLNumber too small"

    #@b0
    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@b3
    .line 650
    :cond_7
    const/16 v16, 0x0

    #@b5
    return v16

    #@b6
    .line 636
    .end local v2    # "crlNum":Ljava/math/BigInteger;
    .end local v3    # "crlNumExt":Lsun/security/x509/CRLNumberExtension;
    .end local v6    # "encoded":[B
    .end local v10    # "in":Lsun/security/util/DerInputStream;
    :catch_0
    move-exception v7

    #@b7
    .line 637
    .local v7, "ex":Ljava/io/IOException;
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    #@b9
    if-eqz v16, :cond_8

    #@bb
    .line 638
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    #@bd
    const-string/jumbo v17, "X509CRLSelector.match: exception in decoding CRL number"

    #@c0
    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@c3
    .line 641
    :cond_8
    const/16 v16, 0x0

    #@c5
    return v16

    #@c6
    .line 655
    .end local v7    # "ex":Ljava/io/IOException;
    .restart local v2    # "crlNum":Ljava/math/BigInteger;
    .restart local v3    # "crlNumExt":Lsun/security/x509/CRLNumberExtension;
    .restart local v6    # "encoded":[B
    .restart local v10    # "in":Lsun/security/util/DerInputStream;
    :cond_9
    move-object/from16 v0, p0

    #@c8
    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    #@ca
    move-object/from16 v16, v0

    #@cc
    if-eqz v16, :cond_b

    #@ce
    .line 656
    move-object/from16 v0, p0

    #@d0
    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    #@d2
    move-object/from16 v16, v0

    #@d4
    move-object/from16 v0, v16

    #@d6
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@d9
    move-result v16

    #@da
    if-lez v16, :cond_b

    #@dc
    .line 657
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    #@de
    if-eqz v16, :cond_a

    #@e0
    .line 658
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    #@e2
    const-string/jumbo v17, "X509CRLSelector.match: CRLNumber too large"

    #@e5
    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@e8
    .line 660
    :cond_a
    const/16 v16, 0x0

    #@ea
    return v16

    #@eb
    .line 667
    .end local v2    # "crlNum":Ljava/math/BigInteger;
    .end local v3    # "crlNumExt":Lsun/security/x509/CRLNumberExtension;
    .end local v4    # "crlNumExtVal":[B
    .end local v6    # "encoded":[B
    .end local v10    # "in":Lsun/security/util/DerInputStream;
    :cond_b
    move-object/from16 v0, p0

    #@ed
    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    #@ef
    move-object/from16 v16, v0

    #@f1
    if-eqz v16, :cond_11

    #@f3
    .line 668
    invoke-virtual {v15}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    #@f6
    move-result-object v5

    #@f7
    .line 669
    .local v5, "crlThisUpdate":Ljava/util/Date;
    invoke-virtual {v15}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    #@fa
    move-result-object v12

    #@fb
    .line 670
    .local v12, "nextUpdate":Ljava/util/Date;
    if-nez v12, :cond_d

    #@fd
    .line 671
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    #@ff
    if-eqz v16, :cond_c

    #@101
    .line 672
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    #@103
    const-string/jumbo v17, "X509CRLSelector.match: nextUpdate null"

    #@106
    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@109
    .line 674
    :cond_c
    const/16 v16, 0x0

    #@10b
    return v16

    #@10c
    .line 676
    :cond_d
    move-object/from16 v0, p0

    #@10e
    iget-object v14, v0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    #@110
    .line 677
    .local v14, "nowPlusSkew":Ljava/util/Date;
    move-object/from16 v0, p0

    #@112
    iget-object v13, v0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    #@114
    .line 678
    .local v13, "nowMinusSkew":Ljava/util/Date;
    move-object/from16 v0, p0

    #@116
    iget-wide v0, v0, Ljava/security/cert/X509CRLSelector;->skew:J

    #@118
    move-wide/from16 v16, v0

    #@11a
    const-wide/16 v18, 0x0

    #@11c
    cmp-long v16, v16, v18

    #@11e
    if-lez v16, :cond_e

    #@120
    .line 679
    new-instance v14, Ljava/util/Date;

    #@122
    .end local v14    # "nowPlusSkew":Ljava/util/Date;
    move-object/from16 v0, p0

    #@124
    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    #@126
    move-object/from16 v16, v0

    #@128
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    #@12b
    move-result-wide v16

    #@12c
    move-object/from16 v0, p0

    #@12e
    iget-wide v0, v0, Ljava/security/cert/X509CRLSelector;->skew:J

    #@130
    move-wide/from16 v18, v0

    #@132
    add-long v16, v16, v18

    #@134
    move-wide/from16 v0, v16

    #@136
    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    #@139
    .line 680
    .restart local v14    # "nowPlusSkew":Ljava/util/Date;
    new-instance v13, Ljava/util/Date;

    #@13b
    .end local v13    # "nowMinusSkew":Ljava/util/Date;
    move-object/from16 v0, p0

    #@13d
    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    #@13f
    move-object/from16 v16, v0

    #@141
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    #@144
    move-result-wide v16

    #@145
    move-object/from16 v0, p0

    #@147
    iget-wide v0, v0, Ljava/security/cert/X509CRLSelector;->skew:J

    #@149
    move-wide/from16 v18, v0

    #@14b
    sub-long v16, v16, v18

    #@14d
    move-wide/from16 v0, v16

    #@14f
    invoke-direct {v13, v0, v1}, Ljava/util/Date;-><init>(J)V

    #@152
    .line 682
    .restart local v13    # "nowMinusSkew":Ljava/util/Date;
    :cond_e
    invoke-virtual {v13, v12}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    #@155
    move-result v16

    #@156
    if-nez v16, :cond_f

    #@158
    .line 683
    invoke-virtual {v14, v5}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@15b
    move-result v16

    #@15c
    .line 682
    if-eqz v16, :cond_11

    #@15e
    .line 684
    :cond_f
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    #@160
    if-eqz v16, :cond_10

    #@162
    .line 685
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    #@164
    const-string/jumbo v17, "X509CRLSelector.match: update out of range"

    #@167
    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@16a
    .line 687
    :cond_10
    const/16 v16, 0x0

    #@16c
    return v16

    #@16d
    .line 691
    .end local v5    # "crlThisUpdate":Ljava/util/Date;
    .end local v12    # "nextUpdate":Ljava/util/Date;
    .end local v13    # "nowMinusSkew":Ljava/util/Date;
    .end local v14    # "nowPlusSkew":Ljava/util/Date;
    :cond_11
    const/16 v16, 0x1

    #@16f
    return v16
.end method

.method public setCertificateChecking(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 451
    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->certChecking:Ljava/security/cert/X509Certificate;

    #@2
    .line 450
    return-void
.end method

.method public setDateAndTime(Ljava/util/Date;)V
    .locals 4
    .param p1, "dateAndTime"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 422
    if-nez p1, :cond_0

    #@3
    .line 423
    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    #@5
    .line 426
    :goto_0
    const-wide/16 v0, 0x0

    #@7
    iput-wide v0, p0, Ljava/security/cert/X509CRLSelector;->skew:J

    #@9
    .line 421
    return-void

    #@a
    .line 425
    :cond_0
    new-instance v0, Ljava/util/Date;

    #@c
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@f
    move-result-wide v2

    #@10
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@13
    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    #@15
    goto :goto_0
.end method

.method setDateAndTime(Ljava/util/Date;J)V
    .locals 4
    .param p1, "dateAndTime"    # Ljava/util/Date;
    .param p2, "skew"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 435
    if-nez p1, :cond_0

    #@3
    .line 434
    :goto_0
    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    #@5
    .line 436
    iput-wide p2, p0, Ljava/security/cert/X509CRLSelector;->skew:J

    #@7
    .line 433
    return-void

    #@8
    .line 435
    :cond_0
    new-instance v0, Ljava/util/Date;

    #@a
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@d
    move-result-wide v2

    #@e
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@11
    goto :goto_0
.end method

.method public setIssuerNames(Ljava/util/Collection;)V
    .locals 3
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
    .line 198
    if-eqz p1, :cond_0

    #@3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_1

    #@9
    .line 199
    :cond_0
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    #@b
    .line 200
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    #@d
    .line 197
    :goto_0
    return-void

    #@e
    .line 202
    :cond_1
    invoke-static {p1}, Ljava/security/cert/X509CRLSelector;->cloneAndCheckIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;

    #@11
    move-result-object v0

    #@12
    .line 204
    .local v0, "tempNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-static {v0}, Ljava/security/cert/X509CRLSelector;->parseIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    #@18
    .line 205
    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    #@1a
    goto :goto_0
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
    const/4 v3, 0x0

    #@1
    .line 122
    if-eqz p1, :cond_0

    #@3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_2

    #@9
    .line 123
    :cond_0
    iput-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    #@b
    .line 124
    iput-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    #@d
    .line 121
    :cond_1
    return-void

    #@e
    .line 127
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    #@10
    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@13
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    #@15
    .line 128
    new-instance v2, Ljava/util/HashSet;

    #@17
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@1a
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    #@1c
    .line 129
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    #@1e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v1

    #@22
    .local v1, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_1

    #@28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    #@2e
    .line 130
    .local v0, "p":Ljavax/security/auth/x500/X500Principal;
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    #@30
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@37
    goto :goto_0
.end method

.method public setMaxCRLNumber(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "maxCRL"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 403
    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    #@2
    .line 402
    return-void
.end method

.method public setMinCRLNumber(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "minCRL"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 391
    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    #@2
    .line 390
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 569
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 570
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "X509CRLSelector: [\n"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 571
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 572
    const-string/jumbo v2, "  IssuerNames:\n"

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    .line 573
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    #@17
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v0

    #@1b
    .line 574
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "    "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    const-string/jumbo v3, "\n"

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@43
    goto :goto_0

    #@44
    .line 577
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_0
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    #@46
    if-eqz v2, :cond_1

    #@48
    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v3, "  minCRLNumber: "

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    const-string/jumbo v3, "\n"

    #@5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@68
    .line 579
    :cond_1
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    #@6a
    if-eqz v2, :cond_2

    #@6c
    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v3, "  maxCRLNumber: "

    #@74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v2

    #@78
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    #@7a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v2

    #@7e
    const-string/jumbo v3, "\n"

    #@81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8c
    .line 581
    :cond_2
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    #@8e
    if-eqz v2, :cond_3

    #@90
    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v3, "  dateAndTime: "

    #@98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    #@9e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v2

    #@a2
    const-string/jumbo v3, "\n"

    #@a5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v2

    #@a9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v2

    #@ad
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b0
    .line 583
    :cond_3
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->certChecking:Ljava/security/cert/X509Certificate;

    #@b2
    if-eqz v2, :cond_4

    #@b4
    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v3, "  Certificate being checked: "

    #@bc
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v2

    #@c0
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->certChecking:Ljava/security/cert/X509Certificate;

    #@c2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v2

    #@c6
    const-string/jumbo v3, "\n"

    #@c9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v2

    #@cd
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v2

    #@d1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d4
    .line 585
    :cond_4
    const-string/jumbo v2, "]"

    #@d7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@da
    .line 586
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@dd
    move-result-object v2

    #@de
    return-object v2
.end method
