.class public Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;
.super Ljava/lang/Object;
.source "PKIXNameConstraintValidator.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidator;


# instance fields
.field private excludedSubtreesDN:Ljava/util/Set;

.field private excludedSubtreesDNS:Ljava/util/Set;

.field private excludedSubtreesEmail:Ljava/util/Set;

.field private excludedSubtreesIP:Ljava/util/Set;

.field private excludedSubtreesURI:Ljava/util/Set;

.field private permittedSubtreesDN:Ljava/util/Set;

.field private permittedSubtreesDNS:Ljava/util/Set;

.field private permittedSubtreesEmail:Ljava/util/Set;

.field private permittedSubtreesIP:Ljava/util/Set;

.field private permittedSubtreesURI:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 22
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    #@a
    .line 24
    new-instance v0, Ljava/util/HashSet;

    #@c
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    #@11
    .line 26
    new-instance v0, Ljava/util/HashSet;

    #@13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    #@18
    .line 28
    new-instance v0, Ljava/util/HashSet;

    #@1a
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    #@1f
    .line 30
    new-instance v0, Ljava/util/HashSet;

    #@21
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    #@26
    .line 42
    return-void
.end method

.method private checkExcludedDN(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .locals 2
    .param p1, "dns"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    #@2
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@5
    move-result-object v1

    #@6
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedDN(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@9
    .line 322
    return-void
.end method

.method private checkExcludedDN(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "dns"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 383
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 385
    return-void

    #@7
    .line 388
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    .line 390
    .local v0, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_2

    #@11
    .line 392
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@17
    .line 394
    .local v1, "subtree":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 396
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    #@1f
    .line 397
    const-string/jumbo v3, "Subject distinguished name is from an excluded subtree"

    #@22
    .line 396
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 381
    .end local v1    # "subtree":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_2
    return-void
.end method

.method private checkExcludedDNS(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "dns"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 992
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 994
    return-void

    #@7
    .line 997
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    .line 999
    .local v0, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_3

    #@11
    .line 1001
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/lang/String;

    #@17
    .line 1004
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_2

    #@1d
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 1006
    :cond_2
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    #@25
    .line 1007
    const-string/jumbo v3, "DNS is from an excluded subtree."

    #@28
    .line 1006
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v2

    #@2c
    .line 990
    .end local v1    # "str":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private checkExcludedEmail(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 780
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 782
    return-void

    #@7
    .line 785
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    .line 787
    .local v0, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_2

    #@11
    .line 789
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/lang/String;

    #@17
    .line 791
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->emailIsConstrained(Ljava/lang/String;Ljava/lang/String;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 793
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    #@1f
    .line 794
    const-string/jumbo v3, "Email address is from an excluded subtree."

    #@22
    .line 793
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 778
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private checkExcludedIP(Ljava/util/Set;[B)V
    .locals 4
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "ip"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 847
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 849
    return-void

    #@7
    .line 852
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .line 854
    .local v1, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_2

    #@11
    .line 856
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, [B

    #@17
    .line 858
    .local v0, "ipWithSubnet":[B
    invoke-direct {p0, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->isIPConstrained([B[B)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 860
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    #@1f
    .line 861
    const-string/jumbo v3, "IP is from an excluded subtree."

    #@22
    .line 860
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 845
    .end local v0    # "ipWithSubnet":[B
    :cond_2
    return-void
.end method

.method private checkExcludedURI(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 1477
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 1479
    return-void

    #@7
    .line 1482
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    .line 1484
    .local v0, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_2

    #@11
    .line 1486
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/lang/String;

    #@17
    .line 1488
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->isUriConstrained(Ljava/lang/String;Ljava/lang/String;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 1490
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    #@1f
    .line 1491
    const-string/jumbo v3, "URI is from an excluded subtree."

    #@22
    .line 1490
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 1475
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private checkPermittedDN(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .locals 2
    .param p1, "dns"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    #@2
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedDN(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@d
    .line 316
    return-void
.end method

.method private checkPermittedDN(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "dns"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 355
    if-nez p1, :cond_0

    #@2
    .line 357
    return-void

    #@3
    .line 360
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_1

    #@9
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_1

    #@f
    .line 362
    return-void

    #@10
    .line 364
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v0

    #@14
    .line 366
    .local v0, "it":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_3

    #@1a
    .line 368
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@20
    .line 370
    .local v1, "subtree":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_2

    #@26
    .line 372
    return-void

    #@27
    .line 376
    .end local v1    # "subtree":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_3
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    #@29
    .line 377
    const-string/jumbo v3, "Subject distinguished name is not from a permitted subtree"

    #@2c
    .line 376
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2
.end method

.method private checkPermittedDNS(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "dns"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 964
    if-nez p1, :cond_0

    #@2
    .line 966
    return-void

    #@3
    .line 969
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v0

    #@7
    .line 971
    .local v0, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_3

    #@d
    .line 973
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Ljava/lang/String;

    #@13
    .line 976
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_2

    #@19
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 978
    :cond_2
    return-void

    #@20
    .line 981
    .end local v1    # "str":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@23
    move-result v2

    #@24
    if-nez v2, :cond_4

    #@26
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@29
    move-result v2

    #@2a
    if-nez v2, :cond_4

    #@2c
    .line 983
    return-void

    #@2d
    .line 985
    :cond_4
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    #@2f
    .line 986
    const-string/jumbo v3, "DNS is not from a permitted subtree."

    #@32
    .line 985
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    #@35
    throw v2
.end method

.method private checkPermittedEmail(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 751
    if-nez p1, :cond_0

    #@2
    .line 753
    return-void

    #@3
    .line 756
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v0

    #@7
    .line 758
    .local v0, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 760
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Ljava/lang/String;

    #@13
    .line 762
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->emailIsConstrained(Ljava/lang/String;Ljava/lang/String;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 764
    return-void

    #@1a
    .line 768
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_3

    #@20
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@23
    move-result v2

    #@24
    if-nez v2, :cond_3

    #@26
    .line 770
    return-void

    #@27
    .line 773
    :cond_3
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    #@29
    .line 774
    const-string/jumbo v3, "Subject email address is not from a permitted subtree."

    #@2c
    .line 773
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2
.end method

.method private checkPermittedIP(Ljava/util/Set;[B)V
    .locals 4
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "ip"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 811
    if-nez p1, :cond_0

    #@2
    .line 813
    return-void

    #@3
    .line 816
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .line 818
    .local v1, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 820
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, [B

    #@13
    .line 822
    .local v0, "ipWithSubnet":[B
    invoke-direct {p0, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->isIPConstrained([B[B)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 824
    return-void

    #@1a
    .line 827
    .end local v0    # "ipWithSubnet":[B
    :cond_2
    array-length v2, p2

    #@1b
    if-nez v2, :cond_3

    #@1d
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_3

    #@23
    .line 829
    return-void

    #@24
    .line 831
    :cond_3
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    #@26
    .line 832
    const-string/jumbo v3, "IP is not from a permitted subtree."

    #@29
    .line 831
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2
.end method

.method private checkPermittedURI(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 1647
    if-nez p1, :cond_0

    #@2
    .line 1649
    return-void

    #@3
    .line 1652
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v0

    #@7
    .line 1654
    .local v0, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 1656
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Ljava/lang/String;

    #@13
    .line 1658
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->isUriConstrained(Ljava/lang/String;Ljava/lang/String;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 1660
    return-void

    #@1a
    .line 1663
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_3

    #@20
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@23
    move-result v2

    #@24
    if-nez v2, :cond_3

    #@26
    .line 1665
    return-void

    #@27
    .line 1667
    :cond_3
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    #@29
    .line 1668
    const-string/jumbo v3, "URI is not from a permitted subtree."

    #@2c
    .line 1667
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2
.end method

.method private collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 9
    .param p1, "coll1"    # Ljava/util/Collection;
    .param p2, "coll2"    # Ljava/util/Collection;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 1826
    if-ne p1, p2, :cond_0

    #@4
    .line 1828
    return v8

    #@5
    .line 1830
    :cond_0
    if-eqz p1, :cond_1

    #@7
    if-nez p2, :cond_2

    #@9
    .line 1832
    :cond_1
    return v7

    #@a
    .line 1834
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@d
    move-result v5

    #@e
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    #@11
    move-result v6

    #@12
    if-eq v5, v6, :cond_3

    #@14
    .line 1836
    return v7

    #@15
    .line 1838
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v3

    #@19
    .line 1840
    .local v3, "it1":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_7

    #@1f
    .line 1842
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    .line 1843
    .local v0, "a":Ljava/lang/Object;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v4

    #@27
    .line 1844
    .local v4, "it2":Ljava/util/Iterator;
    const/4 v2, 0x0

    #@28
    .line 1845
    .local v2, "found":Z
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_6

    #@2e
    .line 1847
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    .line 1848
    .local v1, "b":Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_5

    #@38
    .line 1850
    const/4 v2, 0x1

    #@39
    .line 1854
    .end local v1    # "b":Ljava/lang/Object;
    :cond_6
    if-nez v2, :cond_4

    #@3b
    .line 1856
    return v7

    #@3c
    .line 1859
    .end local v0    # "a":Ljava/lang/Object;
    .end local v2    # "found":Z
    .end local v4    # "it2":Ljava/util/Iterator;
    :cond_7
    return v8
.end method

.method private static compareTo([B[B)I
    .locals 1
    .param p0, "ip1"    # [B
    .param p1, "ip2"    # [B

    #@0
    .prologue
    .line 1772
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1774
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 1776
    :cond_0
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->max([B[B)[B

    #@b
    move-result-object v0

    #@c
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1778
    const/4 v0, 0x1

    #@13
    return v0

    #@14
    .line 1780
    :cond_1
    const/4 v0, -0x1

    #@15
    return v0
.end method

.method private emailIsConstrained(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "constraint"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0x40

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v3, 0x1

    #@4
    .line 904
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, 0x1

    #@a
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 906
    .local v0, "sub":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    #@11
    move-result v1

    #@12
    const/4 v2, -0x1

    #@13
    if-eq v1, v2, :cond_0

    #@15
    .line 908
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 910
    return v3

    #@1c
    .line 914
    :cond_0
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v1

    #@20
    const/16 v2, 0x2e

    #@22
    if-eq v1, v2, :cond_1

    #@24
    .line 916
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 918
    return v3

    #@2b
    .line 922
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_2

    #@31
    .line 924
    return v3

    #@32
    .line 926
    :cond_2
    return v4
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1864
    if-ne p1, p2, :cond_0

    #@2
    .line 1866
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 1868
    :cond_0
    if-eqz p1, :cond_1

    #@6
    if-nez p2, :cond_2

    #@8
    .line 1870
    :cond_1
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 1872
    :cond_2
    instance-of v0, p1, [B

    #@c
    if-eqz v0, :cond_3

    #@e
    instance-of v0, p2, [B

    #@10
    if-eqz v0, :cond_3

    #@12
    .line 1874
    nop

    #@13
    nop

    #@14
    .end local p1    # "o1":Ljava/lang/Object;
    nop

    #@15
    nop

    #@16
    .end local p2    # "o2":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@19
    move-result v0

    #@1a
    return v0

    #@1b
    .line 1878
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    return v0
.end method

.method private static extractHostFromURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x2f

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v3, -0x1

    #@4
    const/16 v2, 0x3a

    #@6
    .line 1696
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@9
    move-result v1

    #@a
    add-int/lit8 v1, v1, 0x1

    #@c
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 1698
    .local v0, "sub":Ljava/lang/String;
    const-string/jumbo v1, "//"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@16
    move-result v1

    #@17
    if-eq v1, v3, :cond_0

    #@19
    .line 1700
    const-string/jumbo v1, "//"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1f
    move-result v1

    #@20
    add-int/lit8 v1, v1, 0x2

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 1703
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@29
    move-result v1

    #@2a
    if-eq v1, v3, :cond_1

    #@2c
    .line 1705
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@2f
    move-result v1

    #@30
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    .line 1708
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    #@37
    move-result v1

    #@38
    add-int/lit8 v1, v1, 0x1

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    .line 1709
    const/16 v1, 0x40

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@43
    move-result v1

    #@44
    add-int/lit8 v1, v1, 0x1

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    .line 1711
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    #@4d
    move-result v1

    #@4e
    if-eq v1, v3, :cond_2

    #@50
    .line 1713
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    #@53
    move-result v1

    #@54
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    .line 1715
    :cond_2
    return-object v0
.end method

.method private extractIPsAndSubnetMasks([B[B)[[B
    .locals 7
    .param p1, "ipWithSubmask1"    # [B
    .param p2, "ipWithSubmask2"    # [B

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 696
    array-length v5, p1

    #@2
    div-int/lit8 v2, v5, 0x2

    #@4
    .line 697
    .local v2, "ipLength":I
    new-array v0, v2, [B

    #@6
    .line 698
    .local v0, "ip1":[B
    new-array v3, v2, [B

    #@8
    .line 699
    .local v3, "subnetmask1":[B
    invoke-static {p1, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@b
    .line 700
    invoke-static {p1, v2, v3, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 702
    new-array v1, v2, [B

    #@10
    .line 703
    .local v1, "ip2":[B
    new-array v4, v2, [B

    #@12
    .line 704
    .local v4, "subnetmask2":[B
    invoke-static {p2, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@15
    .line 705
    invoke-static {p2, v2, v4, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@18
    .line 707
    const/4 v5, 0x4

    #@19
    new-array v5, v5, [[B

    #@1b
    aput-object v0, v5, v6

    #@1d
    const/4 v6, 0x1

    #@1e
    aput-object v3, v5, v6

    #@20
    const/4 v6, 0x2

    #@21
    aput-object v1, v5, v6

    #@23
    const/4 v6, 0x3

    #@24
    aput-object v4, v5, v6

    #@26
    .line 706
    return-object v5
.end method

.method private extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@0
    .prologue
    .line 1720
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private hashCollection(Ljava/util/Collection;)I
    .locals 4
    .param p1, "coll"    # Ljava/util/Collection;

    #@0
    .prologue
    .line 1803
    if-nez p1, :cond_0

    #@2
    .line 1805
    const/4 v3, 0x0

    #@3
    return v3

    #@4
    .line 1807
    :cond_0
    const/4 v0, 0x0

    #@5
    .line 1808
    .local v0, "hash":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .line 1809
    .local v1, "it1":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_2

    #@f
    .line 1811
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    .line 1812
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, [B

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 1814
    nop

    #@18
    nop

    #@19
    .end local v2    # "o":Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    #@1c
    move-result v3

    #@1d
    add-int/2addr v0, v3

    #@1e
    goto :goto_0

    #@1f
    .line 1818
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@22
    move-result v3

    #@23
    add-int/2addr v0, v3

    #@24
    goto :goto_0

    #@25
    .line 1821
    .end local v2    # "o":Ljava/lang/Object;
    :cond_2
    return v0
.end method

.method private intersectDN(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "dns"    # Ljava/util/Set;

    #@0
    .prologue
    .line 404
    new-instance v2, Ljava/util/HashSet;

    #@2
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 405
    .local v2, "intersect":Ljava/util/Set;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v3

    #@9
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_4

    #@f
    .line 407
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    check-cast v5, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@15
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1c
    move-result-object v5

    #@1d
    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@20
    move-result-object v5

    #@21
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@24
    move-result-object v1

    #@25
    .line 409
    .local v1, "dn":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-nez p1, :cond_1

    #@27
    .line 411
    if-eqz v1, :cond_0

    #@29
    .line 413
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_0

    #@2d
    .line 418
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v0

    #@31
    .line 419
    .local v0, "_iter":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_0

    #@37
    .line 421
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v4

    #@3b
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3d
    .line 423
    .local v4, "subtree":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z

    #@40
    move-result v5

    #@41
    if-eqz v5, :cond_3

    #@43
    .line 425
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@46
    goto :goto_1

    #@47
    .line 427
    :cond_3
    invoke-static {v4, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z

    #@4a
    move-result v5

    #@4b
    if-eqz v5, :cond_2

    #@4d
    .line 429
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@50
    goto :goto_1

    #@51
    .line 434
    .end local v0    # "_iter":Ljava/util/Iterator;
    .end local v1    # "dn":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "subtree":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_4
    return-object v2
.end method

.method private intersectDNS(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "dnss"    # Ljava/util/Set;

    #@0
    .prologue
    .line 1299
    new-instance v3, Ljava/util/HashSet;

    #@2
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 1300
    .local v3, "intersect":Ljava/util/Set;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v4

    #@9
    .local v4, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_4

    #@f
    .line 1302
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    check-cast v5, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@15
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@18
    move-result-object v5

    #@19
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 1304
    .local v2, "dns":Ljava/lang/String;
    if-nez p1, :cond_1

    #@1f
    .line 1306
    if-eqz v2, :cond_0

    #@21
    .line 1308
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 1313
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v0

    #@29
    .line 1314
    .local v0, "_iter":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_0

    #@2f
    .line 1316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Ljava/lang/String;

    #@35
    .line 1318
    .local v1, "_permitted":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@38
    move-result v5

    #@39
    if-eqz v5, :cond_3

    #@3b
    .line 1320
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3e
    goto :goto_1

    #@3f
    .line 1322
    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@42
    move-result v5

    #@43
    if-eqz v5, :cond_2

    #@45
    .line 1324
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@48
    goto :goto_1

    #@49
    .line 1330
    .end local v0    # "_iter":Ljava/util/Iterator;
    .end local v1    # "_permitted":Ljava/lang/String;
    .end local v2    # "dns":Ljava/lang/String;
    :cond_4
    return-object v3
.end method

.method private intersectEmail(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "emails"    # Ljava/util/Set;

    #@0
    .prologue
    .line 479
    new-instance v2, Ljava/util/HashSet;

    #@2
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 480
    .local v2, "intersect":Ljava/util/Set;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v3

    #@9
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_2

    #@f
    .line 482
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    check-cast v5, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@15
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@18
    move-result-object v5

    #@19
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 485
    .local v1, "email":Ljava/lang/String;
    if-nez p1, :cond_1

    #@1f
    .line 487
    if-eqz v1, :cond_0

    #@21
    .line 489
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 494
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v4

    #@29
    .line 495
    .local v4, "it2":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_0

    #@2f
    .line 497
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Ljava/lang/String;

    #@35
    .line 499
    .local v0, "_permitted":Ljava/lang/String;
    invoke-direct {p0, v1, v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectEmail(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    #@38
    goto :goto_1

    #@39
    .line 503
    .end local v0    # "_permitted":Ljava/lang/String;
    .end local v1    # "email":Ljava/lang/String;
    .end local v4    # "it2":Ljava/util/Iterator;
    :cond_2
    return-object v2
.end method

.method private intersectEmail(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .param p1, "email1"    # Ljava/lang/String;
    .param p2, "email2"    # Ljava/lang/String;
    .param p3, "intersect"    # Ljava/util/Set;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/16 v2, 0x40

    #@3
    .line 1384
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v1

    #@7
    if-eq v1, v3, :cond_3

    #@9
    .line 1386
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@c
    move-result v1

    #@d
    add-int/lit8 v1, v1, 0x1

    #@f
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 1388
    .local v0, "_sub":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    #@16
    move-result v1

    #@17
    if-eq v1, v3, :cond_1

    #@19
    .line 1390
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 1392
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@22
    .line 1381
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    #@23
    .line 1396
    .restart local v0    # "_sub":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "."

    #@26
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_2

    #@2c
    .line 1398
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_0

    #@32
    .line 1400
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@35
    goto :goto_0

    #@36
    .line 1406
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_0

    #@3c
    .line 1408
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3f
    goto :goto_0

    #@40
    .line 1413
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "."

    #@43
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_8

    #@49
    .line 1415
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    #@4c
    move-result v1

    #@4d
    if-eq v1, v3, :cond_4

    #@4f
    .line 1417
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@52
    move-result v1

    #@53
    add-int/lit8 v1, v1, 0x1

    #@55
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    .line 1418
    .restart local v0    # "_sub":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@5c
    move-result v1

    #@5d
    if-eqz v1, :cond_0

    #@5f
    .line 1420
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@62
    goto :goto_0

    #@63
    .line 1424
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "."

    #@66
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@69
    move-result v1

    #@6a
    if-eqz v1, :cond_7

    #@6c
    .line 1426
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@6f
    move-result v1

    #@70
    if-nez v1, :cond_5

    #@72
    .line 1427
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@75
    move-result v1

    #@76
    .line 1426
    if-eqz v1, :cond_6

    #@78
    .line 1429
    :cond_5
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7b
    goto :goto_0

    #@7c
    .line 1431
    :cond_6
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@7f
    move-result v1

    #@80
    if-eqz v1, :cond_0

    #@82
    .line 1433
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@85
    goto :goto_0

    #@86
    .line 1438
    :cond_7
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@89
    move-result v1

    #@8a
    if-eqz v1, :cond_0

    #@8c
    .line 1440
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@8f
    goto :goto_0

    #@90
    .line 1447
    :cond_8
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    #@93
    move-result v1

    #@94
    if-eq v1, v3, :cond_9

    #@96
    .line 1449
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    #@99
    move-result v1

    #@9a
    add-int/lit8 v1, v1, 0x1

    #@9c
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@9f
    move-result-object v0

    #@a0
    .line 1450
    .restart local v0    # "_sub":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a3
    move-result v1

    #@a4
    if-eqz v1, :cond_0

    #@a6
    .line 1452
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a9
    goto/16 :goto_0

    #@ab
    .line 1456
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_9
    const-string/jumbo v1, "."

    #@ae
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b1
    move-result v1

    #@b2
    if-eqz v1, :cond_a

    #@b4
    .line 1458
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@b7
    move-result v1

    #@b8
    if-eqz v1, :cond_0

    #@ba
    .line 1460
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@bd
    goto/16 :goto_0

    #@bf
    .line 1466
    :cond_a
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c2
    move-result v1

    #@c3
    if-eqz v1, :cond_0

    #@c5
    .line 1468
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c8
    goto/16 :goto_0
.end method

.method private intersectIP(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "ips"    # Ljava/util/Set;

    #@0
    .prologue
    .line 545
    new-instance v1, Ljava/util/HashSet;

    #@2
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 546
    .local v1, "intersect":Ljava/util/Set;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v3

    #@9
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_2

    #@f
    .line 549
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    check-cast v5, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@15
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1c
    move-result-object v5

    #@1d
    .line 548
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@24
    move-result-object v2

    #@25
    .line 550
    .local v2, "ip":[B
    if-nez p1, :cond_1

    #@27
    .line 552
    if-eqz v2, :cond_0

    #@29
    .line 554
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_0

    #@2d
    .line 559
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v4

    #@31
    .line 560
    .local v4, "it2":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_0

    #@37
    .line 562
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, [B

    #@3d
    .line 563
    .local v0, "_permitted":[B
    invoke-direct {p0, v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectIPRange([B[B)Ljava/util/Set;

    #@40
    move-result-object v5

    #@41
    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@44
    goto :goto_1

    #@45
    .line 567
    .end local v0    # "_permitted":[B
    .end local v2    # "ip":[B
    .end local v4    # "it2":Ljava/util/Iterator;
    :cond_2
    return-object v1
.end method

.method private intersectIPRange([B[B)Ljava/util/Set;
    .locals 12
    .param p1, "ipWithSubmask1"    # [B
    .param p2, "ipWithSubmask2"    # [B

    #@0
    .prologue
    .line 641
    array-length v10, p1

    #@1
    array-length v11, p2

    #@2
    if-eq v10, v11, :cond_0

    #@4
    .line 643
    sget-object v10, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@6
    return-object v10

    #@7
    .line 645
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractIPsAndSubnetMasks([B[B)[[B

    #@a
    move-result-object v9

    #@b
    .line 646
    .local v9, "temp":[[B
    const/4 v10, 0x0

    #@c
    aget-object v1, v9, v10

    #@e
    .line 647
    .local v1, "ip1":[B
    const/4 v10, 0x1

    #@f
    aget-object v7, v9, v10

    #@11
    .line 648
    .local v7, "subnetmask1":[B
    const/4 v10, 0x2

    #@12
    aget-object v2, v9, v10

    #@14
    .line 649
    .local v2, "ip2":[B
    const/4 v10, 0x3

    #@15
    aget-object v8, v9, v10

    #@17
    .line 651
    .local v8, "subnetmask2":[B
    invoke-direct {p0, v1, v7, v2, v8}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->minMaxIPs([B[B[B[B)[[B

    #@1a
    move-result-object v5

    #@1b
    .line 654
    .local v5, "minMax":[[B
    const/4 v10, 0x1

    #@1c
    aget-object v10, v5, v10

    #@1e
    const/4 v11, 0x3

    #@1f
    aget-object v11, v5, v11

    #@21
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->min([B[B)[B

    #@24
    move-result-object v3

    #@25
    .line 655
    .local v3, "max":[B
    const/4 v10, 0x0

    #@26
    aget-object v10, v5, v10

    #@28
    const/4 v11, 0x2

    #@29
    aget-object v11, v5, v11

    #@2b
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->max([B[B)[B

    #@2e
    move-result-object v4

    #@2f
    .line 658
    .local v4, "min":[B
    invoke-static {v4, v3}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->compareTo([B[B)I

    #@32
    move-result v10

    #@33
    const/4 v11, 0x1

    #@34
    if-ne v10, v11, :cond_1

    #@36
    .line 660
    sget-object v10, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@38
    return-object v10

    #@39
    .line 663
    :cond_1
    const/4 v10, 0x0

    #@3a
    aget-object v10, v5, v10

    #@3c
    const/4 v11, 0x2

    #@3d
    aget-object v11, v5, v11

    #@3f
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->or([B[B)[B

    #@42
    move-result-object v0

    #@43
    .line 664
    .local v0, "ip":[B
    invoke-static {v7, v8}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->or([B[B)[B

    #@46
    move-result-object v6

    #@47
    .line 665
    .local v6, "subnetmask":[B
    invoke-direct {p0, v0, v6}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->ipWithSubnetMask([B[B)[B

    #@4a
    move-result-object v10

    #@4b
    invoke-static {v10}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@4e
    move-result-object v10

    #@4f
    return-object v10
.end method

.method private intersectURI(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "uris"    # Ljava/util/Set;

    #@0
    .prologue
    .line 1498
    new-instance v2, Ljava/util/HashSet;

    #@2
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 1499
    .local v2, "intersect":Ljava/util/Set;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v3

    #@9
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_2

    #@f
    .line 1501
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    check-cast v5, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@15
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@18
    move-result-object v5

    #@19
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    .line 1503
    .local v4, "uri":Ljava/lang/String;
    if-nez p1, :cond_1

    #@1f
    .line 1505
    if-eqz v4, :cond_0

    #@21
    .line 1507
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 1512
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v0

    #@29
    .line 1513
    .local v0, "_iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_0

    #@2f
    .line 1515
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Ljava/lang/String;

    #@35
    .line 1516
    .local v1, "_permitted":Ljava/lang/String;
    invoke-direct {p0, v1, v4, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectURI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    #@38
    goto :goto_1

    #@39
    .line 1520
    .end local v0    # "_iter":Ljava/util/Iterator;
    .end local v1    # "_permitted":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method private intersectURI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .param p1, "email1"    # Ljava/lang/String;
    .param p2, "email2"    # Ljava/lang/String;
    .param p3, "intersect"    # Ljava/util/Set;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/16 v2, 0x40

    #@3
    .line 1554
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v1

    #@7
    if-eq v1, v3, :cond_3

    #@9
    .line 1556
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@c
    move-result v1

    #@d
    add-int/lit8 v1, v1, 0x1

    #@f
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 1558
    .local v0, "_sub":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    #@16
    move-result v1

    #@17
    if-eq v1, v3, :cond_1

    #@19
    .line 1560
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 1562
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@22
    .line 1551
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    #@23
    .line 1566
    .restart local v0    # "_sub":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "."

    #@26
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_2

    #@2c
    .line 1568
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_0

    #@32
    .line 1570
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@35
    goto :goto_0

    #@36
    .line 1576
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_0

    #@3c
    .line 1578
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3f
    goto :goto_0

    #@40
    .line 1583
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "."

    #@43
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_8

    #@49
    .line 1585
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    #@4c
    move-result v1

    #@4d
    if-eq v1, v3, :cond_4

    #@4f
    .line 1587
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@52
    move-result v1

    #@53
    add-int/lit8 v1, v1, 0x1

    #@55
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    .line 1588
    .restart local v0    # "_sub":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@5c
    move-result v1

    #@5d
    if-eqz v1, :cond_0

    #@5f
    .line 1590
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@62
    goto :goto_0

    #@63
    .line 1594
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "."

    #@66
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@69
    move-result v1

    #@6a
    if-eqz v1, :cond_7

    #@6c
    .line 1596
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@6f
    move-result v1

    #@70
    if-nez v1, :cond_5

    #@72
    .line 1597
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@75
    move-result v1

    #@76
    .line 1596
    if-eqz v1, :cond_6

    #@78
    .line 1599
    :cond_5
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7b
    goto :goto_0

    #@7c
    .line 1601
    :cond_6
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@7f
    move-result v1

    #@80
    if-eqz v1, :cond_0

    #@82
    .line 1603
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@85
    goto :goto_0

    #@86
    .line 1608
    :cond_7
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@89
    move-result v1

    #@8a
    if-eqz v1, :cond_0

    #@8c
    .line 1610
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@8f
    goto :goto_0

    #@90
    .line 1617
    :cond_8
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    #@93
    move-result v1

    #@94
    if-eq v1, v3, :cond_9

    #@96
    .line 1619
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    #@99
    move-result v1

    #@9a
    add-int/lit8 v1, v1, 0x1

    #@9c
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@9f
    move-result-object v0

    #@a0
    .line 1620
    .restart local v0    # "_sub":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a3
    move-result v1

    #@a4
    if-eqz v1, :cond_0

    #@a6
    .line 1622
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a9
    goto/16 :goto_0

    #@ab
    .line 1626
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_9
    const-string/jumbo v1, "."

    #@ae
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b1
    move-result v1

    #@b2
    if-eqz v1, :cond_a

    #@b4
    .line 1628
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@b7
    move-result v1

    #@b8
    if-eqz v1, :cond_0

    #@ba
    .line 1630
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@bd
    goto/16 :goto_0

    #@bf
    .line 1636
    :cond_a
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c2
    move-result v1

    #@c3
    if-eqz v1, :cond_0

    #@c5
    .line 1638
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c8
    goto/16 :goto_0
.end method

.method private ipWithSubnetMask([B[B)[B
    .locals 4
    .param p1, "ip"    # [B
    .param p2, "subnetMask"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 677
    array-length v0, p1

    #@2
    .line 678
    .local v0, "ipLength":I
    mul-int/lit8 v2, v0, 0x2

    #@4
    new-array v1, v2, [B

    #@6
    .line 679
    .local v1, "temp":[B
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@9
    .line 680
    invoke-static {p2, v3, v1, v0, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@c
    .line 681
    return-object v1
.end method

.method private isIPConstrained([B[B)Z
    .locals 7
    .param p1, "ip"    # [B
    .param p2, "constraint"    # [B

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 878
    array-length v1, p1

    #@2
    .line 880
    .local v1, "ipLength":I
    array-length v5, p2

    #@3
    div-int/lit8 v5, v5, 0x2

    #@5
    if-eq v1, v5, :cond_0

    #@7
    .line 882
    return v6

    #@8
    .line 885
    :cond_0
    new-array v4, v1, [B

    #@a
    .line 886
    .local v4, "subnetMask":[B
    invoke-static {p2, v1, v4, v6, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@d
    .line 888
    new-array v3, v1, [B

    #@f
    .line 890
    .local v3, "permittedSubnetAddress":[B
    new-array v2, v1, [B

    #@11
    .line 893
    .local v2, "ipSubnetAddress":[B
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@14
    .line 895
    aget-byte v5, p2, v0

    #@16
    aget-byte v6, v4, v0

    #@18
    and-int/2addr v5, v6

    #@19
    int-to-byte v5, v5

    #@1a
    aput-byte v5, v3, v0

    #@1c
    .line 896
    aget-byte v5, p1, v0

    #@1e
    aget-byte v6, v4, v0

    #@20
    and-int/2addr v5, v6

    #@21
    int-to-byte v5, v5

    #@22
    aput-byte v5, v2, v0

    #@24
    .line 893
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 899
    :cond_1
    invoke-static {v3, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@2a
    move-result v5

    #@2b
    return v5
.end method

.method private isUriConstrained(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "constraint"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1673
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractHostFromURL(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1675
    .local v0, "host":Ljava/lang/String;
    const-string/jumbo v1, "."

    #@8
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 1677
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1679
    return v2

    #@15
    .line 1684
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 1686
    return v2

    #@1c
    .line 1689
    :cond_1
    const/4 v1, 0x0

    #@1d
    return v1
.end method

.method private static max([B[B)[B
    .locals 4
    .param p0, "ip1"    # [B
    .param p1, "ip2"    # [B

    #@0
    .prologue
    const v3, 0xffff

    #@3
    .line 1732
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@5
    if-ge v0, v1, :cond_1

    #@7
    .line 1734
    aget-byte v1, p0, v0

    #@9
    and-int/2addr v1, v3

    #@a
    aget-byte v2, p1, v0

    #@c
    and-int/2addr v2, v3

    #@d
    if-le v1, v2, :cond_0

    #@f
    .line 1736
    return-object p0

    #@10
    .line 1732
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1739
    :cond_1
    return-object p1
.end method

.method private static min([B[B)[B
    .locals 4
    .param p0, "ip1"    # [B
    .param p1, "ip2"    # [B

    #@0
    .prologue
    const v3, 0xffff

    #@3
    .line 1751
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@5
    if-ge v0, v1, :cond_1

    #@7
    .line 1753
    aget-byte v1, p0, v0

    #@9
    and-int/2addr v1, v3

    #@a
    aget-byte v2, p1, v0

    #@c
    and-int/2addr v2, v3

    #@d
    if-ge v1, v2, :cond_0

    #@f
    .line 1755
    return-object p0

    #@10
    .line 1751
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1758
    :cond_1
    return-object p1
.end method

.method private minMaxIPs([B[B[B[B)[[B
    .locals 8
    .param p1, "ip1"    # [B
    .param p2, "subnetmask1"    # [B
    .param p3, "ip2"    # [B
    .param p4, "subnetmask2"    # [B

    #@0
    .prologue
    .line 729
    array-length v1, p1

    #@1
    .line 730
    .local v1, "ipLength":I
    new-array v4, v1, [B

    #@3
    .line 731
    .local v4, "min1":[B
    new-array v2, v1, [B

    #@5
    .line 733
    .local v2, "max1":[B
    new-array v5, v1, [B

    #@7
    .line 734
    .local v5, "min2":[B
    new-array v3, v1, [B

    #@9
    .line 736
    .local v3, "max2":[B
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 738
    aget-byte v6, p1, v0

    #@e
    aget-byte v7, p2, v0

    #@10
    and-int/2addr v6, v7

    #@11
    int-to-byte v6, v6

    #@12
    aput-byte v6, v4, v0

    #@14
    .line 739
    aget-byte v6, p1, v0

    #@16
    aget-byte v7, p2, v0

    #@18
    and-int/2addr v6, v7

    #@19
    aget-byte v7, p2, v0

    #@1b
    not-int v7, v7

    #@1c
    or-int/2addr v6, v7

    #@1d
    int-to-byte v6, v6

    #@1e
    aput-byte v6, v2, v0

    #@20
    .line 741
    aget-byte v6, p3, v0

    #@22
    aget-byte v7, p4, v0

    #@24
    and-int/2addr v6, v7

    #@25
    int-to-byte v6, v6

    #@26
    aput-byte v6, v5, v0

    #@28
    .line 742
    aget-byte v6, p3, v0

    #@2a
    aget-byte v7, p4, v0

    #@2c
    and-int/2addr v6, v7

    #@2d
    aget-byte v7, p4, v0

    #@2f
    not-int v7, v7

    #@30
    or-int/2addr v6, v7

    #@31
    int-to-byte v6, v6

    #@32
    aput-byte v6, v3, v0

    #@34
    .line 736
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 745
    :cond_0
    const/4 v6, 0x4

    #@38
    new-array v6, v6, [[B

    #@3a
    const/4 v7, 0x0

    #@3b
    aput-object v4, v6, v7

    #@3d
    const/4 v7, 0x1

    #@3e
    aput-object v2, v6, v7

    #@40
    const/4 v7, 0x2

    #@41
    aput-object v5, v6, v7

    #@43
    const/4 v7, 0x3

    #@44
    aput-object v3, v6, v7

    #@46
    return-object v6
.end method

.method private static or([B[B)[B
    .locals 4
    .param p0, "ip1"    # [B
    .param p1, "ip2"    # [B

    #@0
    .prologue
    .line 1793
    array-length v2, p0

    #@1
    new-array v1, v2, [B

    #@3
    .line 1794
    .local v1, "temp":[B
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 1796
    aget-byte v2, p0, v0

    #@9
    aget-byte v3, p1, v0

    #@b
    or-int/2addr v2, v3

    #@c
    int-to-byte v2, v2

    #@d
    aput-byte v2, v1, v0

    #@f
    .line 1794
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1798
    :cond_0
    return-object v1
.end method

.method private stringifyIP([B)Ljava/lang/String;
    .locals 5
    .param p1, "ip"    # [B

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1890
    const-string/jumbo v1, ""

    #@4
    .line 1891
    .local v1, "temp":Ljava/lang/String;
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@6
    div-int/lit8 v2, v2, 0x2

    #@8
    if-ge v0, v2, :cond_0

    #@a
    .line 1893
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    aget-byte v3, p1, v0

    #@15
    and-int/lit16 v3, v3, 0xff

    #@17
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v3, "."

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 1891
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 1895
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@30
    move-result v2

    #@31
    add-int/lit8 v2, v2, -0x1

    #@33
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    .line 1896
    new-instance v2, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    const-string/jumbo v3, "/"

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    .line 1897
    array-length v2, p1

    #@4c
    div-int/lit8 v0, v2, 0x2

    #@4e
    :goto_1
    array-length v2, p1

    #@4f
    if-ge v0, v2, :cond_1

    #@51
    .line 1899
    new-instance v2, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    aget-byte v3, p1, v0

    #@5c
    and-int/lit16 v3, v3, 0xff

    #@5e
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    const-string/jumbo v3, "."

    #@69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    .line 1897
    add-int/lit8 v0, v0, 0x1

    #@73
    goto :goto_1

    #@74
    .line 1901
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@77
    move-result v2

    #@78
    add-int/lit8 v2, v2, -0x1

    #@7a
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7d
    move-result-object v1

    #@7e
    .line 1902
    return-object v1
.end method

.method private stringifyIPCollection(Ljava/util/Set;)Ljava/lang/String;
    .locals 4
    .param p1, "ips"    # Ljava/util/Set;

    #@0
    .prologue
    .line 1907
    const-string/jumbo v1, ""

    #@3
    .line 1908
    .local v1, "temp":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    const-string/jumbo v3, "["

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 1909
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v0

    #@1b
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 1911
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, [B

    #@30
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->stringifyIP([B)Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    const-string/jumbo v3, ","

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    goto :goto_0

    #@44
    .line 1913
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@47
    move-result v2

    #@48
    const/4 v3, 0x1

    #@49
    if-le v2, v3, :cond_1

    #@4b
    .line 1915
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@4e
    move-result v2

    #@4f
    add-int/lit8 v2, v2, -0x1

    #@51
    const/4 v3, 0x0

    #@52
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    .line 1917
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    const-string/jumbo v3, "]"

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    .line 1918
    return-object v1
.end method

.method private unionDN(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .locals 4
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "dn"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 439
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_1

    #@6
    .line 441
    if-nez p2, :cond_0

    #@8
    .line 443
    return-object p1

    #@9
    .line 445
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c
    .line 447
    return-object p1

    #@d
    .line 451
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    #@f
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@12
    .line 453
    .local v0, "intersect":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .line 454
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_4

    #@1c
    .line 456
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@22
    .line 458
    .local v2, "subtree":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {p2, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_2

    #@28
    .line 460
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2b
    goto :goto_0

    #@2c
    .line 462
    :cond_2
    invoke-static {v2, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_3

    #@32
    .line 464
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@35
    goto :goto_0

    #@36
    .line 468
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@39
    .line 469
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3c
    goto :goto_0

    #@3d
    .line 473
    .end local v2    # "subtree":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_4
    return-object v0
.end method

.method private unionDNS(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "dns"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1335
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_1

    #@6
    .line 1337
    if-nez p2, :cond_0

    #@8
    .line 1339
    return-object p1

    #@9
    .line 1341
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c
    .line 1343
    return-object p1

    #@d
    .line 1347
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    #@f
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@12
    .line 1349
    .local v2, "union":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v0

    #@16
    .line 1350
    .local v0, "_iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_4

    #@1c
    .line 1352
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/lang/String;

    #@22
    .line 1354
    .local v1, "_permitted":Ljava/lang/String;
    invoke-direct {p0, v1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_2

    #@28
    .line 1356
    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2b
    goto :goto_0

    #@2c
    .line 1358
    :cond_2
    invoke-direct {p0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_3

    #@32
    .line 1360
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@35
    goto :goto_0

    #@36
    .line 1364
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@39
    .line 1365
    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3c
    goto :goto_0

    #@3d
    .line 1369
    .end local v1    # "_permitted":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method private unionEmail(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "email"    # Ljava/lang/String;

    #@0
    .prologue
    .line 508
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_1

    #@6
    .line 510
    if-nez p2, :cond_0

    #@8
    .line 512
    return-object p1

    #@9
    .line 514
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c
    .line 515
    return-object p1

    #@d
    .line 519
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    #@f
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@12
    .line 521
    .local v2, "union":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .line 522
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_2

    #@1c
    .line 524
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/lang/String;

    #@22
    .line 526
    .local v0, "_excluded":Ljava/lang/String;
    invoke-direct {p0, v0, p2, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionEmail(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    #@25
    goto :goto_0

    #@26
    .line 529
    .end local v0    # "_excluded":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method private unionEmail(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .param p1, "email1"    # Ljava/lang/String;
    .param p2, "email2"    # Ljava/lang/String;
    .param p3, "union"    # Ljava/util/Set;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/16 v2, 0x40

    #@3
    .line 1024
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v1

    #@7
    if-eq v1, v3, :cond_5

    #@9
    .line 1026
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@c
    move-result v1

    #@d
    add-int/lit8 v1, v1, 0x1

    #@f
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 1028
    .local v0, "_sub":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    #@16
    move-result v1

    #@17
    if-eq v1, v3, :cond_1

    #@19
    .line 1030
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 1032
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@22
    .line 1021
    .end local v0    # "_sub":Ljava/lang/String;
    :goto_0
    return-void

    #@23
    .line 1036
    .restart local v0    # "_sub":Ljava/lang/String;
    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@26
    .line 1037
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@29
    goto :goto_0

    #@2a
    .line 1041
    :cond_1
    const-string/jumbo v1, "."

    #@2d
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_3

    #@33
    .line 1043
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_2

    #@39
    .line 1045
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3c
    goto :goto_0

    #@3d
    .line 1049
    :cond_2
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@40
    .line 1050
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@43
    goto :goto_0

    #@44
    .line 1056
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_4

    #@4a
    .line 1058
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4d
    goto :goto_0

    #@4e
    .line 1062
    :cond_4
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@51
    .line 1063
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@54
    goto :goto_0

    #@55
    .line 1068
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_5
    const-string/jumbo v1, "."

    #@58
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5b
    move-result v1

    #@5c
    if-eqz v1, :cond_d

    #@5e
    .line 1070
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    #@61
    move-result v1

    #@62
    if-eq v1, v3, :cond_7

    #@64
    .line 1072
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@67
    move-result v1

    #@68
    add-int/lit8 v1, v1, 0x1

    #@6a
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    .line 1073
    .restart local v0    # "_sub":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@71
    move-result v1

    #@72
    if-eqz v1, :cond_6

    #@74
    .line 1075
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@77
    goto :goto_0

    #@78
    .line 1079
    :cond_6
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7b
    .line 1080
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7e
    goto :goto_0

    #@7f
    .line 1084
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_7
    const-string/jumbo v1, "."

    #@82
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@85
    move-result v1

    #@86
    if-eqz v1, :cond_b

    #@88
    .line 1086
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@8b
    move-result v1

    #@8c
    if-nez v1, :cond_8

    #@8e
    .line 1087
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@91
    move-result v1

    #@92
    .line 1086
    if-eqz v1, :cond_9

    #@94
    .line 1089
    :cond_8
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@97
    goto :goto_0

    #@98
    .line 1091
    :cond_9
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@9b
    move-result v1

    #@9c
    if-eqz v1, :cond_a

    #@9e
    .line 1093
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a1
    goto :goto_0

    #@a2
    .line 1097
    :cond_a
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a5
    .line 1098
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a8
    goto/16 :goto_0

    #@aa
    .line 1103
    :cond_b
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@ad
    move-result v1

    #@ae
    if-eqz v1, :cond_c

    #@b0
    .line 1105
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@b3
    goto/16 :goto_0

    #@b5
    .line 1109
    :cond_c
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@b8
    .line 1110
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@bb
    goto/16 :goto_0

    #@bd
    .line 1117
    :cond_d
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    #@c0
    move-result v1

    #@c1
    if-eq v1, v3, :cond_f

    #@c3
    .line 1119
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@c6
    move-result v1

    #@c7
    add-int/lit8 v1, v1, 0x1

    #@c9
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@cc
    move-result-object v0

    #@cd
    .line 1120
    .restart local v0    # "_sub":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d0
    move-result v1

    #@d1
    if-eqz v1, :cond_e

    #@d3
    .line 1122
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d6
    goto/16 :goto_0

    #@d8
    .line 1126
    :cond_e
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@db
    .line 1127
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@de
    goto/16 :goto_0

    #@e0
    .line 1131
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_f
    const-string/jumbo v1, "."

    #@e3
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e6
    move-result v1

    #@e7
    if-eqz v1, :cond_11

    #@e9
    .line 1133
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@ec
    move-result v1

    #@ed
    if-eqz v1, :cond_10

    #@ef
    .line 1135
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f2
    goto/16 :goto_0

    #@f4
    .line 1139
    :cond_10
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f7
    .line 1140
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@fa
    goto/16 :goto_0

    #@fc
    .line 1146
    :cond_11
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ff
    move-result v1

    #@100
    if-eqz v1, :cond_12

    #@102
    .line 1148
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@105
    goto/16 :goto_0

    #@107
    .line 1152
    :cond_12
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@10a
    .line 1153
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@10d
    goto/16 :goto_0
.end method

.method private unionIP(Ljava/util/Set;[B)Ljava/util/Set;
    .locals 4
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "ip"    # [B

    #@0
    .prologue
    .line 582
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_1

    #@6
    .line 584
    if-nez p2, :cond_0

    #@8
    .line 586
    return-object p1

    #@9
    .line 588
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c
    .line 590
    return-object p1

    #@d
    .line 594
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    #@f
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@12
    .line 596
    .local v2, "union":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .line 597
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_2

    #@1c
    .line 599
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, [B

    #@22
    .line 600
    .local v0, "_excluded":[B
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionIPRange([B[B)Ljava/util/Set;

    #@25
    move-result-object v3

    #@26
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@29
    goto :goto_0

    #@2a
    .line 603
    .end local v0    # "_excluded":[B
    :cond_2
    return-object v2
.end method

.method private unionIPRange([B[B)Ljava/util/Set;
    .locals 2
    .param p1, "ipWithSubmask1"    # [B
    .param p2, "ipWithSubmask2"    # [B

    #@0
    .prologue
    .line 616
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 619
    .local v0, "set":Ljava/util/Set;
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 621
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@e
    .line 628
    :goto_0
    return-object v0

    #@f
    .line 625
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@12
    .line 626
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@15
    goto :goto_0
.end method

.method private unionURI(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1525
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_1

    #@6
    .line 1527
    if-nez p2, :cond_0

    #@8
    .line 1529
    return-object p1

    #@9
    .line 1531
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c
    .line 1533
    return-object p1

    #@d
    .line 1537
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    #@f
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@12
    .line 1539
    .local v2, "union":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .line 1540
    .local v1, "_iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_2

    #@1c
    .line 1542
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/lang/String;

    #@22
    .line 1544
    .local v0, "_excluded":Ljava/lang/String;
    invoke-direct {p0, v0, p2, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionURI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    #@25
    goto :goto_0

    #@26
    .line 1547
    .end local v0    # "_excluded":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method private unionURI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .param p1, "email1"    # Ljava/lang/String;
    .param p2, "email2"    # Ljava/lang/String;
    .param p3, "union"    # Ljava/util/Set;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/16 v2, 0x40

    #@3
    .line 1162
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v1

    #@7
    if-eq v1, v3, :cond_5

    #@9
    .line 1164
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@c
    move-result v1

    #@d
    add-int/lit8 v1, v1, 0x1

    #@f
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 1166
    .local v0, "_sub":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    #@16
    move-result v1

    #@17
    if-eq v1, v3, :cond_1

    #@19
    .line 1168
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 1170
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@22
    .line 1159
    .end local v0    # "_sub":Ljava/lang/String;
    :goto_0
    return-void

    #@23
    .line 1174
    .restart local v0    # "_sub":Ljava/lang/String;
    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@26
    .line 1175
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@29
    goto :goto_0

    #@2a
    .line 1179
    :cond_1
    const-string/jumbo v1, "."

    #@2d
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_3

    #@33
    .line 1181
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_2

    #@39
    .line 1183
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3c
    goto :goto_0

    #@3d
    .line 1187
    :cond_2
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@40
    .line 1188
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@43
    goto :goto_0

    #@44
    .line 1194
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_4

    #@4a
    .line 1196
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4d
    goto :goto_0

    #@4e
    .line 1200
    :cond_4
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@51
    .line 1201
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@54
    goto :goto_0

    #@55
    .line 1206
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_5
    const-string/jumbo v1, "."

    #@58
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5b
    move-result v1

    #@5c
    if-eqz v1, :cond_d

    #@5e
    .line 1208
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    #@61
    move-result v1

    #@62
    if-eq v1, v3, :cond_7

    #@64
    .line 1210
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@67
    move-result v1

    #@68
    add-int/lit8 v1, v1, 0x1

    #@6a
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    .line 1211
    .restart local v0    # "_sub":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@71
    move-result v1

    #@72
    if-eqz v1, :cond_6

    #@74
    .line 1213
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@77
    goto :goto_0

    #@78
    .line 1217
    :cond_6
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7b
    .line 1218
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7e
    goto :goto_0

    #@7f
    .line 1222
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_7
    const-string/jumbo v1, "."

    #@82
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@85
    move-result v1

    #@86
    if-eqz v1, :cond_b

    #@88
    .line 1224
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@8b
    move-result v1

    #@8c
    if-nez v1, :cond_8

    #@8e
    .line 1225
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@91
    move-result v1

    #@92
    .line 1224
    if-eqz v1, :cond_9

    #@94
    .line 1227
    :cond_8
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@97
    goto :goto_0

    #@98
    .line 1229
    :cond_9
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@9b
    move-result v1

    #@9c
    if-eqz v1, :cond_a

    #@9e
    .line 1231
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a1
    goto :goto_0

    #@a2
    .line 1235
    :cond_a
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a5
    .line 1236
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a8
    goto/16 :goto_0

    #@aa
    .line 1241
    :cond_b
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@ad
    move-result v1

    #@ae
    if-eqz v1, :cond_c

    #@b0
    .line 1243
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@b3
    goto/16 :goto_0

    #@b5
    .line 1247
    :cond_c
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@b8
    .line 1248
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@bb
    goto/16 :goto_0

    #@bd
    .line 1255
    :cond_d
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    #@c0
    move-result v1

    #@c1
    if-eq v1, v3, :cond_f

    #@c3
    .line 1257
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@c6
    move-result v1

    #@c7
    add-int/lit8 v1, v1, 0x1

    #@c9
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@cc
    move-result-object v0

    #@cd
    .line 1258
    .restart local v0    # "_sub":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d0
    move-result v1

    #@d1
    if-eqz v1, :cond_e

    #@d3
    .line 1260
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d6
    goto/16 :goto_0

    #@d8
    .line 1264
    :cond_e
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@db
    .line 1265
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@de
    goto/16 :goto_0

    #@e0
    .line 1269
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_f
    const-string/jumbo v1, "."

    #@e3
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e6
    move-result v1

    #@e7
    if-eqz v1, :cond_11

    #@e9
    .line 1271
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    #@ec
    move-result v1

    #@ed
    if-eqz v1, :cond_10

    #@ef
    .line 1273
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f2
    goto/16 :goto_0

    #@f4
    .line 1277
    :cond_10
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f7
    .line 1278
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@fa
    goto/16 :goto_0

    #@fc
    .line 1284
    :cond_11
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ff
    move-result v1

    #@100
    if-eqz v1, :cond_12

    #@102
    .line 1286
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@105
    goto/16 :goto_0

    #@107
    .line 1290
    :cond_12
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@10a
    .line 1291
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@10d
    goto/16 :goto_0
.end method

.method private static withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z
    .locals 5
    .param p0, "dns"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .param p1, "subtree"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 331
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@5
    move-result v1

    #@6
    if-ge v1, v4, :cond_0

    #@8
    .line 333
    return v3

    #@9
    .line 336
    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@c
    move-result v1

    #@d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@10
    move-result v2

    #@11
    if-le v1, v2, :cond_1

    #@13
    .line 338
    return v3

    #@14
    .line 341
    :cond_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@17
    move-result v1

    #@18
    add-int/lit8 v0, v1, -0x1

    #@1a
    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_3

    #@1c
    .line 343
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_2

    #@2a
    .line 345
    return v3

    #@2b
    .line 341
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 349
    :cond_3
    return v4
.end method

.method private withinDomain(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "testDomain"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v6, 0x2e

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    .line 931
    move-object v3, p2

    #@5
    .line 932
    .local v3, "tempDomain":Ljava/lang/String;
    const-string/jumbo v5, "."

    #@8
    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_0

    #@e
    .line 934
    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    .line 936
    :cond_0
    invoke-static {v3, v6}, Lcom/android/org/bouncycastle/util/Strings;->split(Ljava/lang/String;C)[Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 937
    .local v1, "domainParts":[Ljava/lang/String;
    invoke-static {p1, v6}, Lcom/android/org/bouncycastle/util/Strings;->split(Ljava/lang/String;C)[Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    .line 939
    .local v4, "testDomainParts":[Ljava/lang/String;
    array-length v5, v4

    #@1b
    array-length v6, v1

    #@1c
    if-gt v5, v6, :cond_1

    #@1e
    .line 941
    return v7

    #@1f
    .line 943
    :cond_1
    array-length v5, v4

    #@20
    array-length v6, v1

    #@21
    sub-int v0, v5, v6

    #@23
    .line 944
    .local v0, "d":I
    const/4 v2, -0x1

    #@24
    .local v2, "i":I
    :goto_0
    array-length v5, v1

    #@25
    if-ge v2, v5, :cond_4

    #@27
    .line 946
    const/4 v5, -0x1

    #@28
    if-ne v2, v5, :cond_2

    #@2a
    .line 948
    add-int v5, v2, v0

    #@2c
    aget-object v5, v4, v5

    #@2e
    const-string/jumbo v6, ""

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_3

    #@37
    .line 950
    return v7

    #@38
    .line 953
    :cond_2
    aget-object v5, v1, v2

    #@3a
    add-int v6, v2, v0

    #@3c
    aget-object v6, v4, v6

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@41
    move-result v5

    #@42
    if-nez v5, :cond_3

    #@44
    .line 955
    return v7

    #@45
    .line 944
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@47
    goto :goto_0

    #@48
    .line 958
    :cond_4
    return v8
.end method


# virtual methods
.method public addExcludedSubtree(Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .locals 3
    .param p1, "subtree"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@0
    .prologue
    .line 197
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@3
    move-result-object v0

    #@4
    .line 199
    .local v0, "base":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    #@7
    move-result v1

    #@8
    packed-switch v1, :pswitch_data_0

    #@b
    .line 195
    :goto_0
    :pswitch_0
    return-void

    #@c
    .line 202
    :pswitch_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    #@e
    .line 203
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 202
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionEmail(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    #@18
    goto :goto_0

    #@19
    .line 206
    :pswitch_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    #@1b
    .line 207
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 206
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionDNS(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    #@22
    move-result-object v1

    #@23
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    #@25
    goto :goto_0

    #@26
    .line 210
    :pswitch_3
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    #@28
    .line 211
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2b
    move-result-object v1

    #@2c
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@32
    .line 210
    invoke-direct {p0, v2, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionDN(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    #@35
    move-result-object v1

    #@36
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    #@38
    goto :goto_0

    #@39
    .line 214
    :pswitch_4
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    #@3b
    .line 215
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    .line 214
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionURI(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    #@42
    move-result-object v1

    #@43
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    #@45
    goto :goto_0

    #@46
    .line 218
    :pswitch_5
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    #@48
    .line 219
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@4b
    move-result-object v2

    #@4c
    .line 218
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@53
    move-result-object v2

    #@54
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionIP(Ljava/util/Set;[B)Ljava/util/Set;

    #@57
    move-result-object v1

    #@58
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    #@5a
    goto :goto_0

    #@5b
    .line 199
    nop

    #@5c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    .locals 3
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    #@3
    move-result v1

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 87
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 92
    :pswitch_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    #@a
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedEmail(Ljava/util/Set;Ljava/lang/String;)V

    #@11
    goto :goto_0

    #@12
    .line 95
    :pswitch_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    #@14
    .line 96
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@17
    move-result-object v2

    #@18
    .line 95
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedDNS(Ljava/util/Set;Ljava/lang/String;)V

    #@23
    goto :goto_0

    #@24
    .line 99
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@27
    move-result-object v1

    #@28
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedDN(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    #@2f
    goto :goto_0

    #@30
    .line 102
    :pswitch_4
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    #@32
    .line 103
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@35
    move-result-object v2

    #@36
    .line 102
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedURI(Ljava/util/Set;Ljava/lang/String;)V

    #@41
    goto :goto_0

    #@42
    .line 106
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@45
    move-result-object v1

    #@46
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@4d
    move-result-object v0

    #@4e
    .line 108
    .local v0, "ip":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    #@50
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedIP(Ljava/util/Set;[B)V

    #@53
    goto :goto_0

    #@54
    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    .locals 3
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    #@3
    move-result v1

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 53
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 58
    :pswitch_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    #@a
    .line 59
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 58
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedEmail(Ljava/util/Set;Ljava/lang/String;)V

    #@11
    goto :goto_0

    #@12
    .line 62
    :pswitch_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    #@14
    .line 63
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@17
    move-result-object v2

    #@18
    .line 62
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedDNS(Ljava/util/Set;Ljava/lang/String;)V

    #@23
    goto :goto_0

    #@24
    .line 66
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@27
    move-result-object v1

    #@28
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedDN(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    #@2f
    goto :goto_0

    #@30
    .line 69
    :pswitch_4
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    #@32
    .line 70
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@35
    move-result-object v2

    #@36
    .line 69
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedURI(Ljava/util/Set;Ljava/lang/String;)V

    #@41
    goto :goto_0

    #@42
    .line 73
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@45
    move-result-object v1

    #@46
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@4d
    move-result-object v0

    #@4e
    .line 75
    .local v0, "ip":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    #@50
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedIP(Ljava/util/Set;[B)V

    #@53
    goto :goto_0

    #@54
    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 240
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 242
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 244
    nop

    #@8
    nop

    #@9
    .line 245
    .local v0, "constraintValidator":Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    #@b
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    #@d
    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 246
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    #@15
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    #@17
    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@1a
    move-result v2

    #@1b
    .line 245
    if-eqz v2, :cond_1

    #@1d
    .line 247
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    #@1f
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    #@21
    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@24
    move-result v2

    #@25
    .line 245
    if-eqz v2, :cond_1

    #@27
    .line 248
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    #@29
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    #@2b
    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@2e
    move-result v2

    #@2f
    .line 245
    if-eqz v2, :cond_1

    #@31
    .line 249
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    #@33
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    #@35
    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@38
    move-result v2

    #@39
    .line 245
    if-eqz v2, :cond_1

    #@3b
    .line 250
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    #@3d
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    #@3f
    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@42
    move-result v2

    #@43
    .line 245
    if-eqz v2, :cond_1

    #@45
    .line 251
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    #@47
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    #@49
    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@4c
    move-result v2

    #@4d
    .line 245
    if-eqz v2, :cond_1

    #@4f
    .line 252
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    #@51
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    #@53
    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@56
    move-result v2

    #@57
    .line 245
    if-eqz v2, :cond_1

    #@59
    .line 253
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    #@5b
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    #@5d
    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@60
    move-result v2

    #@61
    .line 245
    if-eqz v2, :cond_1

    #@63
    .line 254
    iget-object v1, v0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    #@65
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    #@67
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@6a
    move-result v1

    #@6b
    .line 245
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    #@2
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    #@5
    move-result v0

    #@6
    .line 227
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    #@8
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    #@b
    move-result v1

    #@c
    .line 226
    add-int/2addr v0, v1

    #@d
    .line 228
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    #@f
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    #@12
    move-result v1

    #@13
    .line 226
    add-int/2addr v0, v1

    #@14
    .line 229
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    #@16
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    #@19
    move-result v1

    #@1a
    .line 226
    add-int/2addr v0, v1

    #@1b
    .line 230
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    #@1d
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    #@20
    move-result v1

    #@21
    .line 226
    add-int/2addr v0, v1

    #@22
    .line 231
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    #@24
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    #@27
    move-result v1

    #@28
    .line 226
    add-int/2addr v0, v1

    #@29
    .line 232
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    #@2b
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    #@2e
    move-result v1

    #@2f
    .line 226
    add-int/2addr v0, v1

    #@30
    .line 233
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    #@32
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    #@35
    move-result v1

    #@36
    .line 226
    add-int/2addr v0, v1

    #@37
    .line 234
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    #@39
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    #@3c
    move-result v1

    #@3d
    .line 226
    add-int/2addr v0, v1

    #@3e
    .line 235
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    #@40
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    #@43
    move-result v1

    #@44
    .line 226
    add-int/2addr v0, v1

    #@45
    return v0
.end method

.method public intersectEmptyPermittedSubtree(I)V
    .locals 1
    .param p1, "nameType"    # I

    #@0
    .prologue
    .line 171
    packed-switch p1, :pswitch_data_0

    #@3
    .line 169
    :goto_0
    :pswitch_0
    return-void

    #@4
    .line 174
    :pswitch_1
    new-instance v0, Ljava/util/HashSet;

    #@6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    #@b
    goto :goto_0

    #@c
    .line 177
    :pswitch_2
    new-instance v0, Ljava/util/HashSet;

    #@e
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    #@13
    goto :goto_0

    #@14
    .line 180
    :pswitch_3
    new-instance v0, Ljava/util/HashSet;

    #@16
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    #@1b
    goto :goto_0

    #@1c
    .line 183
    :pswitch_4
    new-instance v0, Ljava/util/HashSet;

    #@1e
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@21
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    #@23
    goto :goto_0

    #@24
    .line 186
    :pswitch_5
    new-instance v0, Ljava/util/HashSet;

    #@26
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@29
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    #@2b
    goto :goto_0

    #@2c
    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public intersectPermittedSubtree(Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .locals 2
    .param p1, "permitted"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@0
    .prologue
    .line 114
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V

    #@9
    .line 112
    return-void
.end method

.method public intersectPermittedSubtree([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .locals 8
    .param p1, "permitted"    # [Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@0
    .prologue
    .line 125
    new-instance v4, Ljava/util/HashMap;

    #@2
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 128
    .local v4, "subtreesMap":Ljava/util/Map;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    array-length v6, p1

    #@7
    if-eq v1, v6, :cond_1

    #@9
    .line 130
    aget-object v3, p1, v1

    #@b
    .line 131
    .local v3, "subtree":Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    #@12
    move-result v6

    #@13
    invoke-static {v6}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v5

    #@17
    .line 132
    .local v5, "tagNo":Ljava/lang/Integer;
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    if-nez v6, :cond_0

    #@1d
    .line 134
    new-instance v6, Ljava/util/HashSet;

    #@1f
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@22
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 136
    :cond_0
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v6

    #@29
    check-cast v6, Ljava/util/Set;

    #@2b
    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2e
    .line 128
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 139
    .end local v3    # "subtree":Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v5    # "tagNo":Ljava/lang/Integer;
    :cond_1
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@34
    move-result-object v6

    #@35
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@38
    move-result-object v2

    #@39
    .local v2, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v6

    #@3d
    if-eqz v6, :cond_2

    #@3f
    .line 141
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Ljava/util/Map$Entry;

    #@45
    .line 144
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@48
    move-result-object v6

    #@49
    check-cast v6, Ljava/lang/Integer;

    #@4b
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@4e
    move-result v6

    #@4f
    packed-switch v6, :pswitch_data_0

    #@52
    :pswitch_0
    goto :goto_1

    #@53
    .line 147
    :pswitch_1
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    #@55
    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@58
    move-result-object v6

    #@59
    check-cast v6, Ljava/util/Set;

    #@5b
    .line 147
    invoke-direct {p0, v7, v6}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectEmail(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    #@5e
    move-result-object v6

    #@5f
    iput-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    #@61
    goto :goto_1

    #@62
    .line 151
    :pswitch_2
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    #@64
    .line 152
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@67
    move-result-object v6

    #@68
    check-cast v6, Ljava/util/Set;

    #@6a
    .line 151
    invoke-direct {p0, v7, v6}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectDNS(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    #@6d
    move-result-object v6

    #@6e
    iput-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    #@70
    goto :goto_1

    #@71
    .line 155
    :pswitch_3
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    #@73
    .line 156
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@76
    move-result-object v6

    #@77
    check-cast v6, Ljava/util/Set;

    #@79
    .line 155
    invoke-direct {p0, v7, v6}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectDN(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    #@7c
    move-result-object v6

    #@7d
    iput-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    #@7f
    goto :goto_1

    #@80
    .line 159
    :pswitch_4
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    #@82
    .line 160
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@85
    move-result-object v6

    #@86
    check-cast v6, Ljava/util/Set;

    #@88
    .line 159
    invoke-direct {p0, v7, v6}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectURI(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    #@8b
    move-result-object v6

    #@8c
    iput-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    #@8e
    goto :goto_1

    #@8f
    .line 163
    :pswitch_5
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    #@91
    .line 164
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@94
    move-result-object v6

    #@95
    check-cast v6, Ljava/util/Set;

    #@97
    .line 163
    invoke-direct {p0, v7, v6}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectIP(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    #@9a
    move-result-object v6

    #@9b
    iput-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    #@9d
    goto :goto_1

    #@9e
    .line 123
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_2
    return-void

    #@9f
    .line 144
    nop

    #@a0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 259
    const-string/jumbo v0, ""

    #@3
    .line 260
    .local v0, "temp":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    const-string/jumbo v2, "permitted:\n"

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 261
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    const-string/jumbo v2, "DN:\n"

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    #@3a
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    const-string/jumbo v2, "\n"

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    .line 266
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    #@4f
    if-eqz v1, :cond_1

    #@51
    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    const-string/jumbo v2, "DNS:\n"

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    #@70
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    const-string/jumbo v2, "\n"

    #@7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v0

    #@83
    .line 271
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    #@85
    if-eqz v1, :cond_2

    #@87
    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    const-string/jumbo v2, "Email:\n"

    #@93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v1

    #@97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v0

    #@9b
    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v1

    #@a4
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    #@a6
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@a9
    move-result-object v2

    #@aa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v1

    #@ae
    const-string/jumbo v2, "\n"

    #@b1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v1

    #@b5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v0

    #@b9
    .line 276
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    #@bb
    if-eqz v1, :cond_3

    #@bd
    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v1

    #@c6
    const-string/jumbo v2, "URI:\n"

    #@c9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v1

    #@cd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v0

    #@d1
    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v1

    #@da
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    #@dc
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@df
    move-result-object v2

    #@e0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v1

    #@e4
    const-string/jumbo v2, "\n"

    #@e7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v1

    #@eb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v0

    #@ef
    .line 281
    :cond_3
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    #@f1
    if-eqz v1, :cond_4

    #@f3
    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    #@f5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v1

    #@fc
    const-string/jumbo v2, "IP:\n"

    #@ff
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v1

    #@103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v0

    #@107
    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    #@109
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v1

    #@110
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    #@112
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->stringifyIPCollection(Ljava/util/Set;)Ljava/lang/String;

    #@115
    move-result-object v2

    #@116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v1

    #@11a
    const-string/jumbo v2, "\n"

    #@11d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v1

    #@121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v0

    #@125
    .line 286
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    #@127
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v1

    #@12e
    const-string/jumbo v2, "excluded:\n"

    #@131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v1

    #@135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@138
    move-result-object v0

    #@139
    .line 287
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    #@13b
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    #@13e
    move-result v1

    #@13f
    if-nez v1, :cond_5

    #@141
    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    #@143
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@146
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v1

    #@14a
    const-string/jumbo v2, "DN:\n"

    #@14d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v1

    #@151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@154
    move-result-object v0

    #@155
    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    #@157
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v1

    #@15e
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    #@160
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@163
    move-result-object v2

    #@164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v1

    #@168
    const-string/jumbo v2, "\n"

    #@16b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v1

    #@16f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@172
    move-result-object v0

    #@173
    .line 292
    :cond_5
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    #@175
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    #@178
    move-result v1

    #@179
    if-nez v1, :cond_6

    #@17b
    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    #@17d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@180
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v1

    #@184
    const-string/jumbo v2, "DNS:\n"

    #@187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v1

    #@18b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18e
    move-result-object v0

    #@18f
    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    #@191
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@194
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v1

    #@198
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    #@19a
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@19d
    move-result-object v2

    #@19e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v1

    #@1a2
    const-string/jumbo v2, "\n"

    #@1a5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v1

    #@1a9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ac
    move-result-object v0

    #@1ad
    .line 297
    :cond_6
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    #@1af
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    #@1b2
    move-result v1

    #@1b3
    if-nez v1, :cond_7

    #@1b5
    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1ba
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v1

    #@1be
    const-string/jumbo v2, "Email:\n"

    #@1c1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v1

    #@1c5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c8
    move-result-object v0

    #@1c9
    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    #@1cb
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1ce
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d1
    move-result-object v1

    #@1d2
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    #@1d4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1d7
    move-result-object v2

    #@1d8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v1

    #@1dc
    const-string/jumbo v2, "\n"

    #@1df
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v1

    #@1e3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e6
    move-result-object v0

    #@1e7
    .line 302
    :cond_7
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    #@1e9
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    #@1ec
    move-result v1

    #@1ed
    if-nez v1, :cond_8

    #@1ef
    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v1

    #@1f8
    const-string/jumbo v2, "URI:\n"

    #@1fb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fe
    move-result-object v1

    #@1ff
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@202
    move-result-object v0

    #@203
    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    #@205
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@208
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20b
    move-result-object v1

    #@20c
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    #@20e
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@211
    move-result-object v2

    #@212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@215
    move-result-object v1

    #@216
    const-string/jumbo v2, "\n"

    #@219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21c
    move-result-object v1

    #@21d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@220
    move-result-object v0

    #@221
    .line 307
    :cond_8
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    #@223
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    #@226
    move-result v1

    #@227
    if-nez v1, :cond_9

    #@229
    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    #@22b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@231
    move-result-object v1

    #@232
    const-string/jumbo v2, "IP:\n"

    #@235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@238
    move-result-object v1

    #@239
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23c
    move-result-object v0

    #@23d
    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    #@23f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@242
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@245
    move-result-object v1

    #@246
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    #@248
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->stringifyIPCollection(Ljava/util/Set;)Ljava/lang/String;

    #@24b
    move-result-object v2

    #@24c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v1

    #@250
    const-string/jumbo v2, "\n"

    #@253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@256
    move-result-object v1

    #@257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25a
    move-result-object v0

    #@25b
    .line 312
    :cond_9
    return-object v0
.end method
