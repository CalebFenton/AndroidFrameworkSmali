.class public Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;
.super Ljava/lang/Object;
.source "PKIXNameConstraintValidator.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidator;


# instance fields
.field private blacklist excludedSubtreesDN:Ljava/util/Set;

.field private blacklist excludedSubtreesDNS:Ljava/util/Set;

.field private blacklist excludedSubtreesEmail:Ljava/util/Set;

.field private blacklist excludedSubtreesIP:Ljava/util/Set;

.field private blacklist excludedSubtreesOtherName:Ljava/util/Set;

.field private blacklist excludedSubtreesURI:Ljava/util/Set;

.field private blacklist permittedSubtreesDN:Ljava/util/Set;

.field private blacklist permittedSubtreesDNS:Ljava/util/Set;

.field private blacklist permittedSubtreesEmail:Ljava/util/Set;

.field private blacklist permittedSubtreesIP:Ljava/util/Set;

.field private blacklist permittedSubtreesOtherName:Ljava/util/Set;

.field private blacklist permittedSubtreesURI:Ljava/util/Set;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesOtherName:Ljava/util/Set;

    .line 57
    return-void
.end method

.method private final blacklist addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "str"    # Ljava/lang/String;

    .line 2097
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2098
    return-void
.end method

.method private blacklist checkExcludedDN(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "dns"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    .line 412
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 414
    return-void

    .line 417
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 419
    .local v0, "it":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 421
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 423
    .local v1, "subtree":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 428
    .end local v1    # "subtree":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    goto :goto_b

    .line 425
    .restart local v1    # "subtree":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_1e
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string v3, "Subject distinguished name is from an excluded subtree"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 429
    .end local v1    # "subtree":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_26
    return-void
.end method

.method private blacklist checkExcludedDNS(Ljava/util/Set;Ljava/lang/String;)V
    .registers 7
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "dns"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    .line 1126
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1128
    return-void

    .line 1131
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1133
    .local v0, "it":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1138
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1143
    .end local v1    # "str":Ljava/lang/String;
    goto :goto_b

    .line 1140
    .restart local v1    # "str":Ljava/lang/String;
    :cond_24
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string v3, "DNS is from an excluded subtree."

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1144
    .end local v1    # "str":Ljava/lang/String;
    :cond_2c
    return-void
.end method

.method private blacklist checkExcludedEmail(Ljava/util/Set;Ljava/lang/String;)V
    .registers 7
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    .line 900
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 902
    return-void

    .line 905
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 907
    .local v0, "it":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 909
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 911
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->emailIsConstrained(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 916
    .end local v1    # "str":Ljava/lang/String;
    goto :goto_b

    .line 913
    .restart local v1    # "str":Ljava/lang/String;
    :cond_1e
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string v3, "Email address is from an excluded subtree."

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 917
    .end local v1    # "str":Ljava/lang/String;
    :cond_26
    return-void
.end method

.method private blacklist checkExcludedIP(Ljava/util/Set;[B)V
    .registers 7
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "ip"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    .line 967
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 969
    return-void

    .line 972
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 974
    .local v0, "it":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 976
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 978
    .local v1, "ipWithSubnet":[B
    invoke-direct {p0, p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->isIPConstrained([B[B)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 983
    .end local v1    # "ipWithSubnet":[B
    goto :goto_b

    .line 980
    .restart local v1    # "ipWithSubnet":[B
    :cond_1e
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string v3, "IP is from an excluded subtree."

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 984
    .end local v1    # "ipWithSubnet":[B
    :cond_26
    return-void
.end method

.method private blacklist checkExcludedOtherName(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;)V
    .registers 7
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    .line 878
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 880
    return-void

    .line 883
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 885
    .local v0, "it":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 887
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;

    move-result-object v1

    .line 889
    .local v1, "str":Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;
    invoke-direct {p0, p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->otherNameIsConstrained(Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 894
    .end local v1    # "str":Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;
    goto :goto_b

    .line 891
    .restart local v1    # "str":Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;
    :cond_20
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string v3, "OtherName is from an excluded subtree."

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 895
    .end local v1    # "str":Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;
    :cond_28
    return-void
.end method

.method private blacklist checkExcludedURI(Ljava/util/Set;Ljava/lang/String;)V
    .registers 7
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    .line 1611
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1613
    return-void

    .line 1616
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1618
    .local v0, "it":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1620
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1622
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->isUriConstrained(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1627
    .end local v1    # "str":Ljava/lang/String;
    goto :goto_b

    .line 1624
    .restart local v1    # "str":Ljava/lang/String;
    :cond_1e
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string v3, "URI is from an excluded subtree."

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1628
    .end local v1    # "str":Ljava/lang/String;
    :cond_26
    return-void
.end method

.method private blacklist checkPermittedDN(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "dns"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    .line 384
    if-nez p1, :cond_3

    .line 386
    return-void

    .line 389
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 391
    return-void

    .line 393
    :cond_10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 395
    .local v0, "it":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 397
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 399
    .local v1, "subtree":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 401
    return-void

    .line 403
    .end local v1    # "subtree":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_27
    goto :goto_14

    .line 405
    :cond_28
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string v2, "Subject distinguished name is not from a permitted subtree"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist checkPermittedDNS(Ljava/util/Set;Ljava/lang/String;)V
    .registers 6
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "dns"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    .line 1098
    if-nez p1, :cond_3

    .line 1100
    return-void

    .line 1103
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1105
    .local v0, "it":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1110
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_21

    .line 1114
    .end local v1    # "str":Ljava/lang/String;
    :cond_20
    goto :goto_7

    .line 1112
    .restart local v1    # "str":Ljava/lang/String;
    :cond_21
    :goto_21
    return-void

    .line 1115
    .end local v1    # "str":Ljava/lang/String;
    :cond_22
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2f

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_2f

    .line 1117
    return-void

    .line 1119
    :cond_2f
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string v2, "DNS is not from a permitted subtree."

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist checkPermittedEmail(Ljava/util/Set;Ljava/lang/String;)V
    .registers 6
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    .line 825
    if-nez p1, :cond_3

    .line 827
    return-void

    .line 830
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 832
    .local v0, "it":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 834
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 836
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->emailIsConstrained(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 838
    return-void

    .line 840
    .end local v1    # "str":Ljava/lang/String;
    :cond_1a
    goto :goto_7

    .line 842
    :cond_1b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_28

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_28

    .line 844
    return-void

    .line 847
    :cond_28
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string v2, "Subject email address is not from a permitted subtree."

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist checkPermittedIP(Ljava/util/Set;[B)V
    .registers 6
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "ip"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    .line 931
    if-nez p1, :cond_3

    .line 933
    return-void

    .line 936
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 938
    .local v0, "it":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 940
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 942
    .local v1, "ipWithSubnet":[B
    invoke-direct {p0, p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->isIPConstrained([B[B)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 944
    return-void

    .line 946
    .end local v1    # "ipWithSubnet":[B
    :cond_1a
    goto :goto_7

    .line 947
    :cond_1b
    array-length v1, p2

    if-nez v1, :cond_25

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_25

    .line 949
    return-void

    .line 951
    :cond_25
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string v2, "IP is not from a permitted subtree."

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist checkPermittedOtherName(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;)V
    .registers 6
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    .line 854
    if-nez p1, :cond_3

    .line 856
    return-void

    .line 859
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 861
    .local v0, "it":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 863
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;

    move-result-object v1

    .line 865
    .local v1, "str":Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;
    invoke-direct {p0, p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->otherNameIsConstrained(Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 867
    return-void

    .line 869
    .end local v1    # "str":Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;
    :cond_1c
    goto :goto_7

    .line 871
    :cond_1d
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string v2, "Subject OtherName is not from a permitted subtree."

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist checkPermittedURI(Ljava/util/Set;Ljava/lang/String;)V
    .registers 6
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    .line 1781
    if-nez p1, :cond_3

    .line 1783
    return-void

    .line 1786
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1788
    .local v0, "it":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1790
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1792
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->isUriConstrained(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1794
    return-void

    .line 1796
    .end local v1    # "str":Ljava/lang/String;
    :cond_1a
    goto :goto_7

    .line 1797
    :cond_1b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_28

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_28

    .line 1799
    return-void

    .line 1801
    :cond_28
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string v2, "URI is not from a permitted subtree."

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 11
    .param p1, "coll1"    # Ljava/util/Collection;
    .param p2, "coll2"    # Ljava/util/Collection;

    .line 1960
    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    .line 1962
    return v0

    .line 1964
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_40

    if-nez p2, :cond_a

    goto :goto_40

    .line 1968
    :cond_a
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v2, v3, :cond_15

    .line 1970
    return v1

    .line 1972
    :cond_15
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1974
    .local v2, "it1":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1976
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1977
    .local v3, "a":Ljava/lang/Object;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1978
    .local v4, "it2":Ljava/util/Iterator;
    const/4 v5, 0x0

    .line 1979
    .local v5, "found":Z
    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 1981
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1982
    .local v6, "b":Ljava/lang/Object;
    invoke-direct {p0, v3, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 1984
    const/4 v5, 0x1

    .line 1985
    goto :goto_3b

    .line 1987
    .end local v6    # "b":Ljava/lang/Object;
    :cond_3a
    goto :goto_28

    .line 1988
    :cond_3b
    :goto_3b
    if-nez v5, :cond_3e

    .line 1990
    return v1

    .line 1992
    .end local v3    # "a":Ljava/lang/Object;
    .end local v4    # "it2":Ljava/util/Iterator;
    .end local v5    # "found":Z
    :cond_3e
    goto :goto_19

    .line 1993
    :cond_3f
    return v0

    .line 1966
    .end local v2    # "it1":Ljava/util/Iterator;
    :cond_40
    :goto_40
    return v1
.end method

.method private static blacklist compareTo([B[B)I
    .registers 3
    .param p0, "ip1"    # [B
    .param p1, "ip2"    # [B

    .line 1906
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1908
    const/4 v0, 0x0

    return v0

    .line 1910
    :cond_8
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->max([B[B)[B

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1912
    const/4 v0, 0x1

    return v0

    .line 1914
    :cond_14
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist emailIsConstrained(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "constraint"    # Ljava/lang/String;

    .line 1034
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1036
    .local v1, "sub":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_26

    .line 1038
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1040
    return v2

    .line 1042
    :cond_1b
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1044
    return v2

    .line 1048
    :cond_26
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_35

    .line 1050
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1052
    return v2

    .line 1056
    :cond_35
    invoke-direct {p0, v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1058
    return v2

    .line 1060
    :cond_3c
    return v4
.end method

.method private blacklist equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 1998
    if-ne p1, p2, :cond_4

    .line 2000
    const/4 v0, 0x1

    return v0

    .line 2002
    :cond_4
    if-eqz p1, :cond_21

    if-nez p2, :cond_9

    goto :goto_21

    .line 2006
    :cond_9
    instance-of v0, p1, [B

    if-eqz v0, :cond_1c

    instance-of v0, p2, [B

    if-eqz v0, :cond_1c

    .line 2008
    move-object v0, p1

    check-cast v0, [B

    move-object v1, p2

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0

    .line 2012
    :cond_1c
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2004
    :cond_21
    :goto_21
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist extractHostFromURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "url"    # Ljava/lang/String;

    .line 1830
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1832
    .local v1, "sub":Ljava/lang/String;
    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f

    .line 1834
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1837
    :cond_1f
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v4, :cond_2e

    .line 1839
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1842
    :cond_2e
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1843
    .end local v1    # "sub":Ljava/lang/String;
    .local v0, "sub":Ljava/lang/String;
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1845
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_54

    .line 1847
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1849
    :cond_54
    return-object v0
.end method

.method private blacklist extractIPsAndSubnetMasks([B[B)[[B
    .registers 9
    .param p1, "ipWithSubmask1"    # [B
    .param p2, "ipWithSubmask2"    # [B

    .line 770
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 771
    .local v0, "ipLength":I
    new-array v1, v0, [B

    .line 772
    .local v1, "ip1":[B
    new-array v2, v0, [B

    .line 773
    .local v2, "subnetmask1":[B
    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 774
    invoke-static {p1, v0, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 776
    new-array v4, v0, [B

    .line 777
    .local v4, "ip2":[B
    new-array v5, v0, [B

    .line 778
    .local v5, "subnetmask2":[B
    invoke-static {p2, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 779
    invoke-static {p2, v0, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 780
    filled-new-array {v1, v2, v4, v5}, [[B

    move-result-object v3

    return-object v3
.end method

.method private blacklist extractNameAsString(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 1854
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hashCollection(Ljava/util/Collection;)I
    .registers 6
    .param p1, "coll"    # Ljava/util/Collection;

    .line 1937
    if-nez p1, :cond_4

    .line 1939
    const/4 v0, 0x0

    return v0

    .line 1941
    :cond_4
    const/4 v0, 0x0

    .line 1942
    .local v0, "hash":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1943
    .local v1, "it1":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1945
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1946
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, [B

    if-eqz v3, :cond_20

    .line 1948
    move-object v3, v2

    check-cast v3, [B

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_25

    .line 1952
    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 1954
    .end local v2    # "o":Ljava/lang/Object;
    :goto_25
    goto :goto_9

    .line 1955
    :cond_26
    return v0
.end method

.method private blacklist intersectDN(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 9
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "dns"    # Ljava/util/Set;

    .line 433
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 434
    .local v0, "intersect":Ljava/util/Set;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 436
    nop

    .line 437
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 436
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 438
    .local v2, "dn":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    if-nez p1, :cond_2e

    .line 440
    if-eqz v2, :cond_52

    .line 442
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 447
    :cond_2e
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 448
    .local v3, "_iter":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 450
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 452
    .local v4, "subtree":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 454
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 456
    :cond_48
    invoke-static {v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 458
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 460
    .end local v4    # "subtree":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_51
    :goto_51
    goto :goto_32

    .line 462
    .end local v2    # "dn":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "_iter":Ljava/util/Iterator;
    :cond_52
    :goto_52
    goto :goto_9

    .line 463
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_53
    return-object v0
.end method

.method private blacklist intersectDNS(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 9
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "dnss"    # Ljava/util/Set;

    .line 1433
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1434
    .local v0, "intersect":Ljava/util/Set;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1436
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 1437
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 1436
    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v2

    .line 1438
    .local v2, "dns":Ljava/lang/String;
    if-nez p1, :cond_25

    .line 1440
    if-eqz v2, :cond_49

    .line 1442
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 1447
    :cond_25
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1448
    .local v3, "_iter":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 1450
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1452
    .local v4, "_permitted":Ljava/lang/String;
    invoke-direct {p0, v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1454
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 1456
    :cond_3f
    invoke-direct {p0, v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 1458
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1460
    .end local v4    # "_permitted":Ljava/lang/String;
    :cond_48
    :goto_48
    goto :goto_29

    .line 1462
    .end local v2    # "dns":Ljava/lang/String;
    .end local v3    # "_iter":Ljava/util/Iterator;
    :cond_49
    :goto_49
    goto :goto_9

    .line 1464
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_4a
    return-object v0
.end method

.method private blacklist intersectEmail(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 8
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "emails"    # Ljava/util/Set;

    .line 553
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 554
    .local v0, "intersect":Ljava/util/Set;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 556
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 557
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 556
    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, "email":Ljava/lang/String;
    if-nez p1, :cond_25

    .line 561
    if-eqz v2, :cond_39

    .line 563
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 568
    :cond_25
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 569
    .local v3, "it2":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 571
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 573
    .local v4, "_permitted":Ljava/lang/String;
    invoke-direct {p0, v2, v4, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectEmail(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 574
    .end local v4    # "_permitted":Ljava/lang/String;
    goto :goto_29

    .line 576
    .end local v2    # "email":Ljava/lang/String;
    .end local v3    # "it2":Ljava/util/Iterator;
    :cond_39
    :goto_39
    goto :goto_9

    .line 577
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_3a
    return-object v0
.end method

.method private blacklist intersectEmail(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 8
    .param p1, "email1"    # Ljava/lang/String;
    .param p2, "email2"    # Ljava/lang/String;
    .param p3, "intersect"    # Ljava/util/Set;

    .line 1518
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "."

    const/4 v3, -0x1

    if-eq v1, v3, :cond_40

    .line 1520
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1522
    .local v1, "_sub":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_25

    .line 1524
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1526
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 1530
    :cond_25
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1532
    invoke-direct {p0, v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1534
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 1540
    :cond_35
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1542
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1545
    .end local v1    # "_sub":Ljava/lang/String;
    :cond_3e
    :goto_3e
    goto/16 :goto_be

    .line 1547
    :cond_40
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 1549
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_60

    .line 1551
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1552
    .local v0, "_sub":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1554
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1556
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_5f
    goto :goto_be

    .line 1558
    :cond_60
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1560
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 1561
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    goto :goto_7d

    .line 1565
    :cond_73
    invoke-direct {p0, p2, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1567
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_be

    .line 1563
    :cond_7d
    :goto_7d
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_be

    .line 1572
    :cond_81
    invoke-direct {p0, p2, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1574
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_be

    .line 1581
    :cond_8b
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_a5

    .line 1583
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1584
    .restart local v0    # "_sub":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 1586
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1588
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_a4
    goto :goto_be

    .line 1590
    :cond_a5
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 1592
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1594
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_be

    .line 1600
    :cond_b5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1602
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1606
    :cond_be
    :goto_be
    return-void
.end method

.method private blacklist intersectIP(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 9
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "ips"    # Ljava/util/Set;

    .line 619
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 620
    .local v0, "intersect":Ljava/util/Set;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 622
    nop

    .line 623
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 622
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    .line 623
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    .line 624
    .local v2, "ip":[B
    if-nez p1, :cond_2e

    .line 626
    if-eqz v2, :cond_46

    .line 628
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 633
    :cond_2e
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 634
    .local v3, "it2":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 636
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 637
    .local v4, "_permitted":[B
    invoke-direct {p0, v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectIPRange([B[B)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 638
    .end local v4    # "_permitted":[B
    goto :goto_32

    .line 640
    .end local v2    # "ip":[B
    .end local v3    # "it2":Ljava/util/Iterator;
    :cond_46
    :goto_46
    goto :goto_9

    .line 641
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_47
    return-object v0
.end method

.method private blacklist intersectIPRange([B[B)Ljava/util/Set;
    .registers 15
    .param p1, "ipWithSubmask1"    # [B
    .param p2, "ipWithSubmask2"    # [B

    .line 715
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_7

    .line 717
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0

    .line 719
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractIPsAndSubnetMasks([B[B)[[B

    move-result-object v0

    .line 720
    .local v0, "temp":[[B
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 721
    .local v2, "ip1":[B
    const/4 v3, 0x1

    aget-object v4, v0, v3

    .line 722
    .local v4, "subnetmask1":[B
    const/4 v5, 0x2

    aget-object v6, v0, v5

    .line 723
    .local v6, "ip2":[B
    const/4 v7, 0x3

    aget-object v8, v0, v7

    .line 725
    .local v8, "subnetmask2":[B
    invoke-direct {p0, v2, v4, v6, v8}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->minMaxIPs([B[B[B[B)[[B

    move-result-object v9

    .line 728
    .local v9, "minMax":[[B
    aget-object v10, v9, v3

    aget-object v7, v9, v7

    invoke-static {v10, v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->min([B[B)[B

    move-result-object v7

    .line 729
    .local v7, "max":[B
    aget-object v10, v9, v1

    aget-object v11, v9, v5

    invoke-static {v10, v11}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->max([B[B)[B

    move-result-object v10

    .line 732
    .local v10, "min":[B
    invoke-static {v10, v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->compareTo([B[B)I

    move-result v11

    if-ne v11, v3, :cond_34

    .line 734
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v1

    .line 737
    :cond_34
    aget-object v1, v9, v1

    aget-object v3, v9, v5

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->or([B[B)[B

    move-result-object v1

    .line 738
    .local v1, "ip":[B
    invoke-static {v4, v8}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->or([B[B)[B

    move-result-object v3

    .line 739
    .local v3, "subnetmask":[B
    invoke-direct {p0, v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->ipWithSubnetMask([B[B)[B

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    return-object v5
.end method

.method private blacklist intersectOtherName(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 8
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "otherNames"    # Ljava/util/Set;

    .line 508
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 509
    .local v0, "intersect":Ljava/util/Set;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 511
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;

    move-result-object v2

    .line 513
    .local v2, "otName1":Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;
    if-nez p1, :cond_29

    .line 515
    if-eqz v2, :cond_3f

    .line 517
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 522
    :cond_29
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 523
    .local v3, "it2":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 525
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;

    move-result-object v4

    .line 527
    .local v4, "otName2":Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;
    invoke-direct {p0, v2, v4, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectOtherName(Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;Ljava/util/Set;)V

    .line 528
    .end local v4    # "otName2":Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;
    goto :goto_2d

    .line 530
    .end local v2    # "otName1":Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;
    .end local v3    # "it2":Ljava/util/Iterator;
    :cond_3f
    :goto_3f
    goto :goto_9

    .line 531
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_40
    return-object v0
.end method

.method private blacklist intersectOtherName(Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;Ljava/util/Set;)V
    .registers 5
    .param p1, "otName1"    # Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;
    .param p2, "otName2"    # Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;
    .param p3, "intersect"    # Ljava/util/Set;

    .line 536
    invoke-virtual {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 538
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_9
    return-void
.end method

.method private blacklist intersectURI(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 8
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "uris"    # Ljava/util/Set;

    .line 1632
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1633
    .local v0, "intersect":Ljava/util/Set;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1635
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 1636
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 1635
    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v2

    .line 1637
    .local v2, "uri":Ljava/lang/String;
    if-nez p1, :cond_25

    .line 1639
    if-eqz v2, :cond_39

    .line 1641
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 1646
    :cond_25
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1647
    .local v3, "_iter":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1649
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1650
    .local v4, "_permitted":Ljava/lang/String;
    invoke-direct {p0, v4, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectURI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 1651
    .end local v4    # "_permitted":Ljava/lang/String;
    goto :goto_29

    .line 1653
    .end local v2    # "uri":Ljava/lang/String;
    .end local v3    # "_iter":Ljava/util/Iterator;
    :cond_39
    :goto_39
    goto :goto_9

    .line 1654
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_3a
    return-object v0
.end method

.method private blacklist intersectURI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 8
    .param p1, "email1"    # Ljava/lang/String;
    .param p2, "email2"    # Ljava/lang/String;
    .param p3, "intersect"    # Ljava/util/Set;

    .line 1688
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "."

    const/4 v3, -0x1

    if-eq v1, v3, :cond_40

    .line 1690
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1692
    .local v1, "_sub":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_25

    .line 1694
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1696
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 1700
    :cond_25
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1702
    invoke-direct {p0, v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1704
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 1710
    :cond_35
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1712
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1715
    .end local v1    # "_sub":Ljava/lang/String;
    :cond_3e
    :goto_3e
    goto/16 :goto_be

    .line 1717
    :cond_40
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 1719
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_60

    .line 1721
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1722
    .local v0, "_sub":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1724
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1726
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_5f
    goto :goto_be

    .line 1728
    :cond_60
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1730
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 1731
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    goto :goto_7d

    .line 1735
    :cond_73
    invoke-direct {p0, p2, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1737
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_be

    .line 1733
    :cond_7d
    :goto_7d
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_be

    .line 1742
    :cond_81
    invoke-direct {p0, p2, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1744
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_be

    .line 1751
    :cond_8b
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_a5

    .line 1753
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1754
    .restart local v0    # "_sub":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 1756
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1758
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_a4
    goto :goto_be

    .line 1760
    :cond_a5
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 1762
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1764
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_be

    .line 1770
    :cond_b5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1772
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1776
    :cond_be
    :goto_be
    return-void
.end method

.method private blacklist ipWithSubnetMask([B[B)[B
    .registers 6
    .param p1, "ip"    # [B
    .param p2, "subnetMask"    # [B

    .line 751
    array-length v0, p1

    .line 752
    .local v0, "ipLength":I
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 753
    .local v1, "temp":[B
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 754
    invoke-static {p2, v2, v1, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    return-object v1
.end method

.method private blacklist isIPConstrained([B[B)Z
    .registers 10
    .param p1, "ip"    # [B
    .param p2, "constraint"    # [B

    .line 998
    array-length v0, p1

    .line 1000
    .local v0, "ipLength":I
    array-length v1, p2

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    .line 1002
    return v2

    .line 1005
    :cond_8
    new-array v1, v0, [B

    .line 1006
    .local v1, "subnetMask":[B
    invoke-static {p2, v0, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1008
    new-array v2, v0, [B

    .line 1010
    .local v2, "permittedSubnetAddress":[B
    new-array v3, v0, [B

    .line 1013
    .local v3, "ipSubnetAddress":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    if-ge v4, v0, :cond_27

    .line 1015
    aget-byte v5, p2, v4

    aget-byte v6, v1, v4

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1016
    aget-byte v5, p1, v4

    aget-byte v6, v1, v4

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1013
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1019
    .end local v4    # "i":I
    :cond_27
    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    return v4
.end method

.method private blacklist isUriConstrained(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "constraint"    # Ljava/lang/String;

    .line 1807
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractHostFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1809
    .local v0, "host":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_14

    .line 1811
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1813
    return v2

    .line 1818
    :cond_14
    invoke-direct {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1820
    return v2

    .line 1823
    :cond_1b
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist max([B[B)[B
    .registers 6
    .param p0, "ip1"    # [B
    .param p1, "ip2"    # [B

    .line 1866
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_13

    .line 1868
    aget-byte v1, p0, v0

    const v2, 0xffff

    and-int/2addr v1, v2

    aget-byte v3, p1, v0

    and-int/2addr v2, v3

    if-le v1, v2, :cond_10

    .line 1870
    return-object p0

    .line 1866
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1873
    .end local v0    # "i":I
    :cond_13
    return-object p1
.end method

.method private static blacklist min([B[B)[B
    .registers 6
    .param p0, "ip1"    # [B
    .param p1, "ip2"    # [B

    .line 1885
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_13

    .line 1887
    aget-byte v1, p0, v0

    const v2, 0xffff

    and-int/2addr v1, v2

    aget-byte v3, p1, v0

    and-int/2addr v2, v3

    if-ge v1, v2, :cond_10

    .line 1889
    return-object p0

    .line 1885
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1892
    .end local v0    # "i":I
    :cond_13
    return-object p1
.end method

.method private blacklist minMaxIPs([B[B[B[B)[[B
    .registers 13
    .param p1, "ip1"    # [B
    .param p2, "subnetmask1"    # [B
    .param p3, "ip2"    # [B
    .param p4, "subnetmask2"    # [B

    .line 803
    array-length v0, p1

    .line 804
    .local v0, "ipLength":I
    new-array v1, v0, [B

    .line 805
    .local v1, "min1":[B
    new-array v2, v0, [B

    .line 807
    .local v2, "max1":[B
    new-array v3, v0, [B

    .line 808
    .local v3, "min2":[B
    new-array v4, v0, [B

    .line 810
    .local v4, "max2":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_a
    if-ge v5, v0, :cond_37

    .line 812
    aget-byte v6, p1, v5

    aget-byte v7, p2, v5

    and-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 813
    aget-byte v6, p1, v5

    aget-byte v7, p2, v5

    and-int/2addr v6, v7

    aget-byte v7, p2, v5

    not-int v7, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 815
    aget-byte v6, p3, v5

    aget-byte v7, p4, v5

    and-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 816
    aget-byte v6, p3, v5

    aget-byte v7, p4, v5

    and-int/2addr v6, v7

    aget-byte v7, p4, v5

    not-int v7, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 810
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 819
    .end local v5    # "i":I
    :cond_37
    filled-new-array {v1, v2, v3, v4}, [[B

    move-result-object v5

    return-object v5
.end method

.method private static blacklist or([B[B)[B
    .registers 6
    .param p0, "ip1"    # [B
    .param p1, "ip2"    # [B

    .line 1927
    array-length v0, p0

    new-array v0, v0, [B

    .line 1928
    .local v0, "temp":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 1930
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1928
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1932
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method private blacklist otherNameIsConstrained(Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;)Z
    .registers 4
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;
    .param p2, "constraint"    # Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;

    .line 1024
    invoke-virtual {p2, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1026
    const/4 v0, 0x1

    return v0

    .line 1029
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist stringifyIP([B)Ljava/lang/String;
    .registers 7
    .param p1, "ip"    # [B

    .line 2024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2025
    .local v0, "temp":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    const-string v3, "."

    if-ge v1, v2, :cond_24

    .line 2027
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_16

    .line 2029
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2031
    :cond_16
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2034
    .end local v1    # "i":I
    :cond_24
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2035
    const/4 v1, 0x1

    .line 2036
    .local v1, "first":Z
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    .local v2, "i":I
    :goto_2d
    array-length v4, p1

    if-ge v2, v4, :cond_45

    .line 2038
    if-eqz v1, :cond_34

    .line 2040
    const/4 v1, 0x0

    goto :goto_37

    .line 2044
    :cond_34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2046
    :goto_37
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2036
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 2049
    .end local v2    # "i":I
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist stringifyIPCollection(Ljava/util/Set;)Ljava/lang/String;
    .registers 6
    .param p1, "ips"    # Ljava/util/Set;

    .line 2054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2055
    .local v0, "temp":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2058
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_20

    .line 2060
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->stringifyIP([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 2064
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_2e
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2065
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist stringifyOtherNameCollection(Ljava/util/Set;)Ljava/lang/String;
    .registers 7
    .param p1, "otherNames"    # Ljava/util/Set;

    .line 2070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2071
    .local v0, "temp":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2072
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 2074
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_20

    .line 2076
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2078
    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;

    move-result-object v2

    .line 2079
    .local v2, "name":Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;->getTypeID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2080
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2084
    :try_start_38
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;->getValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_4b} :catch_4c

    .line 2089
    goto :goto_54

    .line 2086
    :catch_4c
    move-exception v3

    .line 2088
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2090
    .end local v2    # "name":Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_54
    goto :goto_e

    .line 2091
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_55
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2092
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist unionDN(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .registers 7
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "dn"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 468
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 470
    if-nez p2, :cond_9

    .line 472
    return-object p1

    .line 474
    :cond_9
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 476
    return-object p1

    .line 480
    :cond_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 482
    .local v0, "intersect":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 483
    .local v1, "it":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 485
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 487
    .local v2, "subtree":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {p2, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 489
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 491
    :cond_2e
    invoke-static {v2, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 493
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 497
    :cond_38
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 498
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 500
    .end local v2    # "subtree":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :goto_3e
    goto :goto_16

    .line 502
    :cond_3f
    return-object v0
.end method

.method private blacklist unionDNS(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "dns"    # Ljava/lang/String;

    .line 1469
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1471
    if-nez p2, :cond_9

    .line 1473
    return-object p1

    .line 1475
    :cond_9
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1477
    return-object p1

    .line 1481
    :cond_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1483
    .local v0, "union":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1484
    .local v1, "_iter":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1486
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1488
    .local v2, "_permitted":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1490
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 1492
    :cond_2c
    invoke-direct {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1494
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 1498
    :cond_36
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1499
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1501
    .end local v2    # "_permitted":Ljava/lang/String;
    :goto_3c
    goto :goto_16

    .line 1503
    :cond_3d
    return-object v0
.end method

.method private blacklist unionEmail(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "email"    # Ljava/lang/String;

    .line 582
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 584
    if-nez p2, :cond_9

    .line 586
    return-object p1

    .line 588
    :cond_9
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 589
    return-object p1

    .line 593
    :cond_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 595
    .local v0, "union":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 596
    .local v1, "it":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 598
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 600
    .local v2, "_excluded":Ljava/lang/String;
    invoke-direct {p0, v2, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionEmail(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 601
    .end local v2    # "_excluded":Ljava/lang/String;
    goto :goto_16

    .line 603
    :cond_26
    return-object v0
.end method

.method private blacklist unionEmail(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 8
    .param p1, "email1"    # Ljava/lang/String;
    .param p2, "email2"    # Ljava/lang/String;
    .param p3, "union"    # Ljava/util/Set;

    .line 1158
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "."

    const/4 v3, -0x1

    if-eq v1, v3, :cond_55

    .line 1160
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1162
    .local v1, "_sub":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_2c

    .line 1164
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1166
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 1170
    :cond_25
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1171
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 1175
    :cond_2c
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1177
    invoke-direct {p0, v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1179
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 1183
    :cond_3c
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1184
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 1190
    :cond_43
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1192
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 1196
    :cond_4d
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1197
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1200
    .end local v1    # "_sub":Ljava/lang/String;
    :goto_53
    goto/16 :goto_fe

    .line 1202
    :cond_55
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 1204
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_7d

    .line 1206
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1207
    .local v0, "_sub":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 1209
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    .line 1213
    :cond_75
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1214
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1216
    .end local v0    # "_sub":Ljava/lang/String;
    :goto_7b
    goto/16 :goto_fe

    .line 1218
    :cond_7d
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 1220
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a1

    .line 1221
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    goto :goto_a1

    .line 1225
    :cond_90
    invoke-direct {p0, p2, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 1227
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    .line 1231
    :cond_9a
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1232
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    .line 1223
    :cond_a1
    :goto_a1
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    .line 1237
    :cond_a5
    invoke-direct {p0, p2, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 1239
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    .line 1243
    :cond_af
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1244
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    .line 1251
    :cond_b6
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_d7

    .line 1253
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1254
    .restart local v0    # "_sub":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 1256
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d6

    .line 1260
    :cond_d0
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1261
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1263
    .end local v0    # "_sub":Ljava/lang/String;
    :goto_d6
    goto :goto_fe

    .line 1265
    :cond_d7
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 1267
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 1269
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    .line 1273
    :cond_e7
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1274
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    .line 1280
    :cond_ee
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 1282
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    .line 1286
    :cond_f8
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1287
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1291
    :goto_fe
    return-void
.end method

.method private blacklist unionIP(Ljava/util/Set;[B)Ljava/util/Set;
    .registers 7
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "ip"    # [B

    .line 656
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 658
    if-nez p2, :cond_9

    .line 660
    return-object p1

    .line 662
    :cond_9
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 664
    return-object p1

    .line 668
    :cond_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 670
    .local v0, "union":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 671
    .local v1, "it":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 673
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 674
    .local v2, "_excluded":[B
    invoke-direct {p0, v2, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionIPRange([B[B)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 675
    .end local v2    # "_excluded":[B
    goto :goto_16

    .line 677
    :cond_2a
    return-object v0
.end method

.method private blacklist unionIPRange([B[B)Ljava/util/Set;
    .registers 5
    .param p1, "ipWithSubmask1"    # [B
    .param p2, "ipWithSubmask2"    # [B

    .line 690
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 693
    .local v0, "set":Ljava/util/Set;
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 695
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 699
    :cond_f
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 700
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 702
    :goto_15
    return-object v0
.end method

.method private blacklist unionOtherName(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;)Ljava/util/Set;
    .registers 4
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "otherName"    # Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;

    .line 544
    new-instance v0, Ljava/util/HashSet;

    if-eqz p1, :cond_8

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_b

    :cond_8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 546
    .local v0, "union":Ljava/util/Set;
    :goto_b
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 548
    return-object v0
.end method

.method private blacklist unionURI(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "uri"    # Ljava/lang/String;

    .line 1659
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1661
    if-nez p2, :cond_9

    .line 1663
    return-object p1

    .line 1665
    :cond_9
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1667
    return-object p1

    .line 1671
    :cond_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1673
    .local v0, "union":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1674
    .local v1, "_iter":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1676
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1678
    .local v2, "_excluded":Ljava/lang/String;
    invoke-direct {p0, v2, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionURI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 1679
    .end local v2    # "_excluded":Ljava/lang/String;
    goto :goto_16

    .line 1681
    :cond_26
    return-object v0
.end method

.method private blacklist unionURI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 8
    .param p1, "email1"    # Ljava/lang/String;
    .param p2, "email2"    # Ljava/lang/String;
    .param p3, "union"    # Ljava/util/Set;

    .line 1296
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "."

    const/4 v3, -0x1

    if-eq v1, v3, :cond_55

    .line 1298
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1300
    .local v1, "_sub":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_2c

    .line 1302
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1304
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 1308
    :cond_25
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1309
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 1313
    :cond_2c
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1315
    invoke-direct {p0, v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1317
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 1321
    :cond_3c
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1322
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 1328
    :cond_43
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1330
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 1334
    :cond_4d
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1335
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1338
    .end local v1    # "_sub":Ljava/lang/String;
    :goto_53
    goto/16 :goto_fe

    .line 1340
    :cond_55
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 1342
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_7d

    .line 1344
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1345
    .local v0, "_sub":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 1347
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    .line 1351
    :cond_75
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1352
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1354
    .end local v0    # "_sub":Ljava/lang/String;
    :goto_7b
    goto/16 :goto_fe

    .line 1356
    :cond_7d
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 1358
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a1

    .line 1359
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    goto :goto_a1

    .line 1363
    :cond_90
    invoke-direct {p0, p2, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 1365
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    .line 1369
    :cond_9a
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1370
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    .line 1361
    :cond_a1
    :goto_a1
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    .line 1375
    :cond_a5
    invoke-direct {p0, p2, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 1377
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    .line 1381
    :cond_af
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1382
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    .line 1389
    :cond_b6
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_d7

    .line 1391
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1392
    .restart local v0    # "_sub":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 1394
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d6

    .line 1398
    :cond_d0
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1399
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1401
    .end local v0    # "_sub":Ljava/lang/String;
    :goto_d6
    goto :goto_fe

    .line 1403
    :cond_d7
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 1405
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 1407
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    .line 1411
    :cond_e7
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1412
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    .line 1418
    :cond_ee
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 1420
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    .line 1424
    :cond_f8
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1425
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1429
    :goto_fe
    return-void
.end method

.method private static blacklist withinDNSubtree(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Z
    .registers 11
    .param p0, "dns"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .param p1, "subtree"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 313
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_9

    .line 315
    return v1

    .line 318
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-le v0, v3, :cond_14

    .line 320
    return v1

    .line 323
    :cond_14
    const/4 v0, 0x0

    .line 324
    .local v0, "start":I
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v3

    .line 325
    .local v3, "subtreeRdnStart":Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1e
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v4, v5, :cond_37

    .line 327
    move v0, v4

    .line 328
    invoke-virtual {p0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v5

    .line 329
    .local v5, "dnsRdn":Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    invoke-static {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->rDNAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 331
    goto :goto_37

    .line 325
    .end local v5    # "dnsRdn":Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 335
    .end local v4    # "j":I
    :cond_37
    :goto_37
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    sub-int/2addr v5, v0

    if-le v4, v5, :cond_43

    .line 337
    return v1

    .line 340
    :cond_43
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_44
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v4, v5, :cond_bd

    .line 343
    invoke-virtual {p1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v5

    .line 344
    .local v5, "subtreeRdn":Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    add-int v6, v0, v4

    invoke-virtual {p0, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v6

    .line 347
    .local v6, "dnsRdn":Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->size()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->size()I

    move-result v8

    if-ne v7, v8, :cond_bc

    .line 356
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v7

    if-nez v7, :cond_7d

    .line 358
    return v1

    .line 360
    :cond_7d
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->size()I

    move-result v7

    if-ne v7, v2, :cond_b2

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    sget-object v8, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v7

    if-eqz v7, :cond_b2

    .line 362
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b9

    .line 364
    return v1

    .line 367
    :cond_b2
    invoke-static {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->rDNAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v7

    if-nez v7, :cond_b9

    .line 369
    return v1

    .line 340
    .end local v5    # "subtreeRdn":Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .end local v6    # "dnsRdn":Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    :cond_b9
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 374
    .restart local v5    # "subtreeRdn":Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .restart local v6    # "dnsRdn":Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    :cond_bc
    return v1

    .line 378
    .end local v4    # "j":I
    .end local v5    # "subtreeRdn":Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .end local v6    # "dnsRdn":Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    :cond_bd
    return v2
.end method

.method private blacklist withinDomain(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "testDomain"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .line 1065
    move-object v0, p2

    .line 1066
    .local v0, "tempDomain":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 1068
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1070
    :cond_e
    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Strings;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    .line 1071
    .local v3, "domainParts":[Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/util/Strings;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    .line 1073
    .local v1, "testDomainParts":[Ljava/lang/String;
    array-length v4, v1

    array-length v5, v3

    const/4 v6, 0x0

    if-gt v4, v5, :cond_1e

    .line 1075
    return v6

    .line 1077
    :cond_1e
    array-length v4, v1

    array-length v5, v3

    sub-int/2addr v4, v5

    .line 1078
    .local v4, "d":I
    const/4 v5, -0x1

    .local v5, "i":I
    :goto_22
    array-length v7, v3

    if-ge v5, v7, :cond_45

    .line 1080
    const/4 v7, -0x1

    if-ne v5, v7, :cond_35

    .line 1082
    add-int v7, v5, v4

    aget-object v7, v1, v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 1084
    return v6

    .line 1087
    :cond_35
    aget-object v7, v3, v5

    add-int v8, v5, v4

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_42

    .line 1089
    return v6

    .line 1078
    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 1092
    .end local v5    # "i":I
    :cond_45
    return v2
.end method


# virtual methods
.method public blacklist addExcludedSubtree(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .registers 6
    .param p1, "subtree"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 227
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    .line 229
    .local v0, "base":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_8a

    .line 256
    :pswitch_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag encountered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :pswitch_28
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    .line 253
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    .line 252
    invoke-direct {p0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionIP(Ljava/util/Set;[B)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    .line 254
    goto :goto_88

    .line 248
    :pswitch_3d
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    .line 249
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-direct {p0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionURI(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    .line 250
    goto :goto_88

    .line 244
    :pswitch_4a
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    .line 245
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 244
    invoke-direct {p0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionDN(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    .line 246
    goto :goto_88

    .line 240
    :pswitch_5d
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    .line 241
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-direct {p0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionDNS(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    .line 242
    goto :goto_88

    .line 236
    :pswitch_6a
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    .line 237
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-direct {p0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionEmail(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    .line 238
    goto :goto_88

    .line 232
    :pswitch_77
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesOtherName:Ljava/util/Set;

    .line 233
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;

    move-result-object v2

    .line 232
    invoke-direct {p0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionOtherName(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesOtherName:Ljava/util/Set;

    .line 234
    nop

    .line 258
    :goto_88
    return-void

    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_77
        :pswitch_6a
        :pswitch_5d
        :pswitch_b
        :pswitch_4a
        :pswitch_b
        :pswitch_3d
        :pswitch_28
    .end packed-switch
.end method

.method public blacklist checkExcluded(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    .registers 4
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    .line 103
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v0

    packed-switch v0, :pswitch_data_54

    :pswitch_7
    goto :goto_52

    .line 121
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedIP(Ljava/util/Set;[B)V

    .line 122
    goto :goto_52

    .line 118
    :pswitch_1a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedURI(Ljava/util/Set;Ljava/lang/String;)V

    .line 119
    goto :goto_52

    .line 115
    :pswitch_24
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    .line 116
    goto :goto_52

    .line 112
    :pswitch_30
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedDNS(Ljava/util/Set;Ljava/lang/String;)V

    .line 113
    goto :goto_52

    .line 109
    :pswitch_3a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedEmail(Ljava/util/Set;Ljava/lang/String;)V

    .line 110
    goto :goto_52

    .line 106
    :pswitch_44
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesOtherName:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedOtherName(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;)V

    .line 107
    nop

    .line 126
    :goto_52
    return-void

    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_44
        :pswitch_3a
        :pswitch_30
        :pswitch_7
        :pswitch_24
        :pswitch_7
        :pswitch_1a
        :pswitch_8
    .end packed-switch
.end method

.method public blacklist checkExcludedDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 4
    .param p1, "dns"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedDN(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 307
    return-void
.end method

.method public blacklist checkPermitted(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    .registers 4
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v0

    packed-switch v0, :pswitch_data_54

    :pswitch_7
    goto :goto_52

    .line 86
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedIP(Ljava/util/Set;[B)V

    .line 87
    goto :goto_52

    .line 83
    :pswitch_1a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedURI(Ljava/util/Set;Ljava/lang/String;)V

    .line 84
    goto :goto_52

    .line 80
    :pswitch_24
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    .line 81
    goto :goto_52

    .line 77
    :pswitch_30
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedDNS(Ljava/util/Set;Ljava/lang/String;)V

    .line 78
    goto :goto_52

    .line 74
    :pswitch_3a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedEmail(Ljava/util/Set;Ljava/lang/String;)V

    .line 75
    goto :goto_52

    .line 71
    :pswitch_44
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesOtherName:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedOtherName(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/asn1/x509/OtherName;)V

    .line 72
    nop

    .line 91
    :goto_52
    return-void

    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_44
        :pswitch_3a
        :pswitch_30
        :pswitch_7
        :pswitch_24
        :pswitch_7
        :pswitch_1a
        :pswitch_8
    .end packed-switch
.end method

.method public blacklist checkPermittedDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 4
    .param p1, "dns"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedDN(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 301
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 278
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 280
    return v1

    .line 282
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    .line 283
    .local v0, "constraintValidator":Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    .line 284
    invoke-direct {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    .line 285
    invoke-direct {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    .line 286
    invoke-direct {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    .line 287
    invoke-direct {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesOtherName:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesOtherName:Ljava/util/Set;

    .line 288
    invoke-direct {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    .line 289
    invoke-direct {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    .line 290
    invoke-direct {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    .line 291
    invoke-direct {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    .line 292
    invoke-direct {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    .line 293
    invoke-direct {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesOtherName:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesOtherName:Ljava/util/Set;

    .line 294
    invoke-direct {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_83

    const/4 v1, 0x1

    goto :goto_84

    :cond_83
    nop

    .line 283
    :goto_84
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    .line 263
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    .line 264
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    .line 265
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    .line 266
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesOtherName:Ljava/util/Set;

    .line 267
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    .line 268
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    .line 269
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    .line 270
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    .line 271
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    .line 272
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesOtherName:Ljava/util/Set;

    .line 273
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    .line 262
    return v0
.end method

.method public blacklist intersectEmptyPermittedSubtree(I)V
    .registers 5
    .param p1, "nameType"    # I

    .line 195
    packed-switch p1, :pswitch_data_4e

    .line 216
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tag encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :pswitch_1c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    .line 214
    goto :goto_4c

    .line 210
    :pswitch_24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    .line 211
    goto :goto_4c

    .line 207
    :pswitch_2c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    .line 208
    goto :goto_4c

    .line 204
    :pswitch_34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    .line 205
    goto :goto_4c

    .line 201
    :pswitch_3c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    .line 202
    goto :goto_4c

    .line 198
    :pswitch_44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesOtherName:Ljava/util/Set;

    .line 199
    nop

    .line 218
    :goto_4c
    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_44
        :pswitch_3c
        :pswitch_34
        :pswitch_3
        :pswitch_2c
        :pswitch_3
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method

.method public blacklist intersectPermittedSubtree(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .registers 4
    .param p1, "permitted"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V

    .line 131
    return-void
.end method

.method public blacklist intersectPermittedSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .registers 9
    .param p1, "permitted"    # [Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v0, "subtreesMap":Ljava/util/Map;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    if-eq v1, v2, :cond_31

    .line 146
    aget-object v2, p1, v1

    .line 147
    .local v2, "subtree":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 148
    .local v3, "tagNo":Ljava/lang/Integer;
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_25

    .line 150
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_25
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v2    # "subtree":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v3    # "tagNo":Ljava/lang/Integer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 155
    .end local v1    # "i":I
    :cond_31
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 160
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 161
    .local v3, "nameType":I
    packed-switch v3, :pswitch_data_c8

    .line 188
    :pswitch_52
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag encountered: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 184
    :pswitch_6b
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    .line 185
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 184
    invoke-direct {p0, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectIP(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    .line 186
    goto :goto_c5

    .line 180
    :pswitch_7a
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    .line 181
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 180
    invoke-direct {p0, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectURI(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    .line 182
    goto :goto_c5

    .line 176
    :pswitch_89
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    .line 177
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 176
    invoke-direct {p0, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectDN(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    .line 178
    goto :goto_c5

    .line 172
    :pswitch_98
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    .line 173
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 172
    invoke-direct {p0, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectDNS(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    .line 174
    goto :goto_c5

    .line 168
    :pswitch_a7
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    .line 169
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 168
    invoke-direct {p0, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectEmail(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    .line 170
    goto :goto_c5

    .line 164
    :pswitch_b6
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesOtherName:Ljava/util/Set;

    .line 165
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 164
    invoke-direct {p0, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectOtherName(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesOtherName:Ljava/util/Set;

    .line 166
    nop

    .line 190
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "nameType":I
    :goto_c5
    goto/16 :goto_39

    .line 191
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_c7
    return-void

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_a7
        :pswitch_98
        :pswitch_52
        :pswitch_89
        :pswitch_52
        :pswitch_7a
        :pswitch_6b
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 2102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2104
    .local v0, "temp":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "permitted:"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2105
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    const-string v2, "DN:"

    if-eqz v1, :cond_1d

    .line 2107
    invoke-direct {p0, v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2108
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2110
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    const-string v3, "DNS:"

    if-eqz v1, :cond_2f

    .line 2112
    invoke-direct {p0, v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2113
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2115
    :cond_2f
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    const-string v4, "Email:"

    if-eqz v1, :cond_41

    .line 2117
    invoke-direct {p0, v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2118
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2120
    :cond_41
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    const-string v5, "URI:"

    if-eqz v1, :cond_53

    .line 2122
    invoke-direct {p0, v0, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2123
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2125
    :cond_53
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    const-string v6, "IP:"

    if-eqz v1, :cond_65

    .line 2127
    invoke-direct {p0, v0, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2128
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->stringifyIPCollection(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2130
    :cond_65
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesOtherName:Ljava/util/Set;

    const-string v7, "OtherName:"

    if-eqz v1, :cond_77

    .line 2132
    invoke-direct {p0, v0, v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2133
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesOtherName:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->stringifyOtherNameCollection(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2135
    :cond_77
    const-string v1, "excluded:"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2136
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_90

    .line 2138
    invoke-direct {p0, v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2139
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2141
    :cond_90
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a4

    .line 2143
    invoke-direct {p0, v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2144
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2146
    :cond_a4
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b8

    .line 2148
    invoke-direct {p0, v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2149
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2151
    :cond_b8
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_cc

    .line 2153
    invoke-direct {p0, v0, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2154
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2156
    :cond_cc
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e0

    .line 2158
    invoke-direct {p0, v0, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2159
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->stringifyIPCollection(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2161
    :cond_e0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesOtherName:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f4

    .line 2163
    invoke-direct {p0, v0, v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2164
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesOtherName:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->stringifyOtherNameCollection(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2166
    :cond_f4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
