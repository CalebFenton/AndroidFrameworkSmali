.class public Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;
.super Ljava/lang/Object;
.source "PKIXNameConstraintValidator.java"


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

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesOtherName:Ljava/util/Set;

    return-void
.end method

.method private final blacklist addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 3

    .line 2097
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private blacklist checkExcludedDN(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3

    .line 412
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_26

    .line 417
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 419
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 421
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 423
    invoke-static {p2, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_b

    .line 425
    :cond_1e
    new-instance p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string p1, "Subject distinguished name is from an excluded subtree"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    :goto_26
    return-void
.end method

.method private blacklist checkExcludedDNS(Ljava/util/Set;Ljava/lang/String;)V
    .registers 5

    .line 1126
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2c

    .line 1131
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1133
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1135
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1138
    invoke-direct {p0, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_b

    .line 1140
    :cond_24
    new-instance p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string p1, "DNS is from an excluded subtree."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    :goto_2c
    return-void
.end method

.method private blacklist checkExcludedEmail(Ljava/util/Set;Ljava/lang/String;)V
    .registers 4

    .line 900
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_26

    .line 905
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 907
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 909
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 911
    invoke-direct {p0, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->emailIsConstrained(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_b

    .line 913
    :cond_1e
    new-instance p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string p1, "Email address is from an excluded subtree."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    :goto_26
    return-void
.end method

.method private blacklist checkExcludedIP(Ljava/util/Set;[B)V
    .registers 4

    .line 967
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_26

    .line 972
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 974
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 976
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 978
    invoke-direct {p0, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->isIPConstrained([B[B)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_b

    .line 980
    :cond_1e
    new-instance p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string p1, "IP is from an excluded subtree."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    :goto_26
    return-void
.end method

.method private blacklist checkExcludedOtherName(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/x509/OtherName;)V
    .registers 4

    .line 878
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_28

    .line 883
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 885
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 887
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/OtherName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/OtherName;

    move-result-object v0

    .line 889
    invoke-direct {p0, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->otherNameIsConstrained(Lcom/android/org/bouncycastle/asn1/x509/OtherName;Lcom/android/org/bouncycastle/asn1/x509/OtherName;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_b

    .line 891
    :cond_20
    new-instance p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string p1, "OtherName is from an excluded subtree."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    :goto_28
    return-void
.end method

.method private blacklist checkExcludedURI(Ljava/util/Set;Ljava/lang/String;)V
    .registers 4

    .line 1611
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_26

    .line 1616
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1618
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1620
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1622
    invoke-direct {p0, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->isUriConstrained(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_b

    .line 1624
    :cond_1e
    new-instance p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string p1, "URI is from an excluded subtree."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    :goto_26
    return-void
.end method

.method private blacklist checkPermittedDN(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_26

    .line 389
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p0

    if-nez p0, :cond_10

    goto :goto_26

    .line 393
    :cond_10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 395
    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 397
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 399
    invoke-static {p2, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    :goto_26
    return-void

    .line 405
    :cond_27
    new-instance p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string p1, "Subject distinguished name is not from a permitted subtree"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist checkPermittedDNS(Ljava/util/Set;Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_2c

    .line 1103
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1105
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1110
    invoke-direct {p0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2c

    .line 1115
    :cond_20
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_2d

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p0

    if-nez p0, :cond_2d

    :cond_2c
    :goto_2c
    return-void

    .line 1119
    :cond_2d
    new-instance p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string p1, "DNS is not from a permitted subtree."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist checkPermittedEmail(Ljava/util/Set;Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_26

    .line 830
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 832
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 834
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 836
    invoke-direct {p0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->emailIsConstrained(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_26

    .line 842
    :cond_1a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_27

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p0

    if-nez p0, :cond_27

    :goto_26
    return-void

    .line 847
    :cond_27
    new-instance p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string p1, "Subject email address is not from a permitted subtree."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist checkPermittedIP(Ljava/util/Set;[B)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_23

    .line 936
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 938
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 940
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 942
    invoke-direct {p0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->isIPConstrained([B[B)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_23

    .line 947
    :cond_1a
    array-length p0, p2

    if-nez p0, :cond_24

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p0

    if-nez p0, :cond_24

    :goto_23
    return-void

    .line 951
    :cond_24
    new-instance p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string p1, "IP is not from a permitted subtree."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist checkPermittedOtherName(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/x509/OtherName;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_1b

    .line 859
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 861
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 863
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/OtherName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/OtherName;

    move-result-object v0

    .line 865
    invoke-direct {p0, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->otherNameIsConstrained(Lcom/android/org/bouncycastle/asn1/x509/OtherName;Lcom/android/org/bouncycastle/asn1/x509/OtherName;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_1b
    return-void

    .line 871
    :cond_1c
    new-instance p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string p1, "Subject OtherName is not from a permitted subtree."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist checkPermittedURI(Ljava/util/Set;Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_26

    .line 1786
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1788
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1790
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1792
    invoke-direct {p0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->isUriConstrained(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_26

    .line 1797
    :cond_1a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_27

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p0

    if-nez p0, :cond_27

    :goto_26
    return-void

    .line 1801
    :cond_27
    new-instance p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;

    const-string p1, "URI is not from a permitted subtree."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    if-nez p2, :cond_a

    goto :goto_3a

    .line 1968
    :cond_a
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v2, v3, :cond_15

    return v1

    .line 1972
    :cond_15
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1974
    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1976
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1977
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1979
    :cond_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1981
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1982
    invoke-direct {p0, v2, v4}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_19

    :cond_38
    return v1

    :cond_39
    return v0

    :cond_3a
    :goto_3a
    return v1
.end method

.method private static blacklist compareTo([B[B)I
    .registers 3

    .line 1906
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1910
    :cond_8
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->max([B[B)[B

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist emailIsConstrained(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/16 v0, 0x40

    .line 1034
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1036
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_26

    .line 1038
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    return v2

    .line 1042
    :cond_1b
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3c

    return v2

    .line 1048
    :cond_26
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_35

    .line 1050
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3c

    return v2

    .line 1056
    :cond_35
    invoke-direct {p0, v1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3c

    return v2

    :cond_3c
    return v4
.end method

.method private blacklist equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p1, :cond_1f

    if-nez p2, :cond_9

    goto :goto_1f

    .line 2006
    :cond_9
    instance-of p0, p1, [B

    if-eqz p0, :cond_1a

    instance-of p0, p2, [B

    if-eqz p0, :cond_1a

    .line 2008
    check-cast p1, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0

    .line 2012
    :cond_1a
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist extractHostFromURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x3a

    .line 1830
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1832
    const-string v1, "//"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1f

    .line 1834
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1837
    :cond_1f
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v3, :cond_2e

    .line 1839
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1842
    :cond_2e
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x40

    .line 1843
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    .line 1845
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_54

    .line 1847
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_54
    return-object p0
.end method

.method private blacklist extractIPsAndSubnetMasks([B[B)[[B
    .registers 7

    .line 770
    array-length p0, p1

    div-int/lit8 p0, p0, 0x2

    .line 771
    new-array v0, p0, [B

    .line 772
    new-array v1, p0, [B

    const/4 v2, 0x0

    .line 773
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 774
    invoke-static {p1, p0, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 776
    new-array p1, p0, [B

    .line 777
    new-array v3, p0, [B

    .line 778
    invoke-static {p2, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 779
    invoke-static {p2, p0, v3, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 780
    filled-new-array {v0, v1, p1, v3}, [[B

    move-result-object p0

    return-object p0
.end method

.method private blacklist extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;
    .registers 2

    .line 1854
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1IA5String;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist hashCollection(Ljava/util/Collection;)I
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 1942
    :cond_4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1943
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1945
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1946
    instance-of v1, v0, [B

    if-eqz v1, :cond_1e

    .line 1948
    check-cast v0, [B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_1c
    add-int/2addr p0, v0

    goto :goto_8

    .line 1952
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1c

    :cond_23
    return p0
.end method

.method private blacklist intersectDN(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 7

    .line 433
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 434
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 437
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 436
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    if-nez p1, :cond_2d

    if-eqz v0, :cond_9

    .line 442
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 447
    :cond_2d
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 448
    :cond_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 450
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 452
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 454
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 456
    :cond_47
    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 458
    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_51
    return-object p0
.end method

.method private blacklist intersectDNS(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 8

    .line 1433
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1434
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1436
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 1437
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 1436
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_25

    if-eqz v1, :cond_9

    .line 1442
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1447
    :cond_25
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1448
    :cond_29
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1450
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1452
    invoke-direct {p0, v3, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1454
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 1456
    :cond_3f
    invoke-direct {p0, v1, v3}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1458
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_49
    return-object v0
.end method

.method private blacklist intersectEmail(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 7

    .line 553
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 554
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 556
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 557
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 556
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_25

    if-eqz v1, :cond_9

    .line 563
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 568
    :cond_25
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 569
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 571
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 573
    invoke-direct {p0, v1, v3, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectEmail(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_29

    :cond_39
    return-object v0
.end method

.method private blacklist intersectEmail(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 8

    const/16 v0, 0x40

    .line 1518
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "."

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3f

    .line 1520
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1522
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_25

    .line 1524
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bd

    .line 1526
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1530
    :cond_25
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1532
    invoke-direct {p0, v1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bd

    .line 1534
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1540
    :cond_35
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bd

    .line 1542
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1547
    :cond_3f
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 1549
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_5f

    .line 1551
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1552
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bd

    .line 1554
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1558
    :cond_5f
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1560
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 1561
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    goto :goto_7c

    .line 1565
    :cond_72
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bd

    .line 1567
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1563
    :cond_7c
    :goto_7c
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1572
    :cond_80
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bd

    .line 1574
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1581
    :cond_8a
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_a4

    .line 1583
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1584
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bd

    .line 1586
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1590
    :cond_a4
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 1592
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bd

    .line 1594
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1600
    :cond_b4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bd

    .line 1602
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_bd
    return-void
.end method

.method private blacklist intersectIP(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 7

    .line 619
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 620
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 623
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 622
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    .line 623
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    if-nez p1, :cond_2d

    if-eqz v1, :cond_9

    .line 628
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 633
    :cond_2d
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 634
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 636
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 637
    invoke-direct {p0, v3, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectIPRange([B[B)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_31

    :cond_45
    return-object v0
.end method

.method private blacklist intersectIPRange([B[B)Ljava/util/Set;
    .registers 10

    .line 715
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_7

    .line 717
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    .line 719
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractIPsAndSubnetMasks([B[B)[[B

    move-result-object p1

    const/4 p2, 0x0

    .line 720
    aget-object v0, p1, p2

    const/4 v1, 0x1

    .line 721
    aget-object v2, p1, v1

    const/4 v3, 0x2

    .line 722
    aget-object v4, p1, v3

    const/4 v5, 0x3

    .line 723
    aget-object p1, p1, v5

    .line 725
    invoke-direct {p0, v0, v2, v4, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->minMaxIPs([B[B[B[B)[[B

    move-result-object v0

    .line 728
    aget-object v4, v0, v1

    aget-object v5, v0, v5

    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->min([B[B)[B

    move-result-object v4

    .line 729
    aget-object v5, v0, p2

    aget-object v6, v0, v3

    invoke-static {v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->max([B[B)[B

    move-result-object v5

    .line 732
    invoke-static {v5, v4}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->compareTo([B[B)I

    move-result v4

    if-ne v4, v1, :cond_34

    .line 734
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    .line 737
    :cond_34
    aget-object p2, v0, p2

    aget-object v0, v0, v3

    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->or([B[B)[B

    move-result-object p2

    .line 738
    invoke-static {v2, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->or([B[B)[B

    move-result-object p1

    .line 739
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->ipWithSubnetMask([B[B)[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private blacklist intersectOtherName(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 7

    .line 508
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 509
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 511
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/OtherName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/OtherName;

    move-result-object v1

    if-nez p1, :cond_29

    if-eqz v1, :cond_9

    .line 517
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 522
    :cond_29
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 523
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 525
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/OtherName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/OtherName;

    move-result-object v3

    .line 527
    invoke-direct {p0, v1, v3, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectOtherName(Lcom/android/org/bouncycastle/asn1/x509/OtherName;Lcom/android/org/bouncycastle/asn1/x509/OtherName;Ljava/util/Set;)V

    goto :goto_2d

    :cond_3f
    return-object v0
.end method

.method private blacklist intersectOtherName(Lcom/android/org/bouncycastle/asn1/x509/OtherName;Lcom/android/org/bouncycastle/asn1/x509/OtherName;Ljava/util/Set;)V
    .registers 4

    .line 536
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 538
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method private blacklist intersectURI(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 7

    .line 1632
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1633
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1635
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 1636
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 1635
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_25

    if-eqz v1, :cond_9

    .line 1641
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1646
    :cond_25
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1647
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1649
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1650
    invoke-direct {p0, v3, v1, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectURI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_29

    :cond_39
    return-object v0
.end method

.method private blacklist intersectURI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 8

    const/16 v0, 0x40

    .line 1688
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "."

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3f

    .line 1690
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1692
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_25

    .line 1694
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bd

    .line 1696
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1700
    :cond_25
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1702
    invoke-direct {p0, v1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bd

    .line 1704
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1710
    :cond_35
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bd

    .line 1712
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1717
    :cond_3f
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 1719
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_5f

    .line 1721
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1722
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bd

    .line 1724
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1728
    :cond_5f
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1730
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 1731
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    goto :goto_7c

    .line 1735
    :cond_72
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bd

    .line 1737
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1733
    :cond_7c
    :goto_7c
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1742
    :cond_80
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bd

    .line 1744
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1751
    :cond_8a
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_a4

    .line 1753
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1754
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bd

    .line 1756
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1760
    :cond_a4
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 1762
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bd

    .line 1764
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1770
    :cond_b4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bd

    .line 1772
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_bd
    return-void
.end method

.method private blacklist ipWithSubnetMask([B[B)[B
    .registers 5

    .line 751
    array-length p0, p1

    mul-int/lit8 v0, p0, 0x2

    .line 752
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 753
    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 754
    invoke-static {p2, v1, v0, p0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private blacklist isIPConstrained([B[B)Z
    .registers 9

    .line 998
    array-length p0, p1

    .line 1000
    array-length v0, p2

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_8

    return v1

    .line 1005
    :cond_8
    new-array v0, p0, [B

    .line 1006
    invoke-static {p2, p0, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1008
    new-array v2, p0, [B

    .line 1010
    new-array v3, p0, [B

    :goto_11
    if-ge v1, p0, :cond_26

    .line 1015
    aget-byte v4, p2, v1

    aget-byte v5, v0, v1

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 1016
    aget-byte v4, p1, v1

    aget-byte v5, v0, v1

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1019
    :cond_26
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0
.end method

.method private blacklist isUriConstrained(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1807
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractHostFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1809
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 1811
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    return v1

    .line 1818
    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    return v1

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist max([B[B)[B
    .registers 6

    const/4 v0, 0x0

    .line 1866
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

    return-object p0

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-object p1
.end method

.method private static blacklist min([B[B)[B
    .registers 6

    const/4 v0, 0x0

    .line 1885
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

    return-object p0

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-object p1
.end method

.method private blacklist minMaxIPs([B[B[B[B)[[B
    .registers 12

    .line 803
    array-length p0, p1

    .line 804
    new-array v0, p0, [B

    .line 805
    new-array v1, p0, [B

    .line 807
    new-array v2, p0, [B

    .line 808
    new-array v3, p0, [B

    const/4 v4, 0x0

    :goto_a
    if-ge v4, p0, :cond_33

    .line 812
    aget-byte v5, p1, v4

    aget-byte v6, p2, v4

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 813
    aget-byte v5, p1, v4

    aget-byte v6, p2, v4

    and-int/2addr v5, v6

    not-int v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 815
    aget-byte v5, p3, v4

    aget-byte v6, p4, v4

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 816
    aget-byte v5, p3, v4

    aget-byte v6, p4, v4

    and-int/2addr v5, v6

    not-int v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 819
    :cond_33
    filled-new-array {v0, v1, v2, v3}, [[B

    move-result-object p0

    return-object p0
.end method

.method private static blacklist or([B[B)[B
    .registers 6

    .line 1927
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 1928
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 1930
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method

.method private blacklist otherNameIsConstrained(Lcom/android/org/bouncycastle/asn1/x509/OtherName;Lcom/android/org/bouncycastle/asn1/x509/OtherName;)Z
    .registers 3

    .line 1024
    invoke-virtual {p2, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist stringifyIP([B)Ljava/lang/String;
    .registers 7

    .line 2024
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 2025
    :goto_7
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    const-string v3, "."

    if-ge v1, v2, :cond_25

    .line 2027
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_17

    .line 2029
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2031
    :cond_17
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2034
    :cond_25
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2036
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    :goto_2e
    array-length v4, p1

    if-ge v1, v4, :cond_46

    if-eqz v2, :cond_35

    move v2, v0

    goto :goto_38

    .line 2044
    :cond_35
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2046
    :goto_38
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 2049
    :cond_46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist stringifyIPCollection(Ljava/util/Set;)Ljava/lang/String;
    .registers 5

    .line 2054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2055
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2058
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_20

    .line 2060
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    :cond_20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->stringifyIP([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 2064
    :cond_2e
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2065
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist stringifyOtherNameCollection(Ljava/util/Set;)Ljava/lang/String;
    .registers 4

    .line 2070
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2071
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2072
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2074
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_20

    .line 2076
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2078
    :cond_20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/OtherName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/OtherName;

    move-result-object v0

    .line 2079
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/OtherName;->getTypeID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2080
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2084
    :try_start_38
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/OtherName;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_4b} :catch_4c

    goto :goto_e

    :catch_4c
    move-exception v0

    .line 2088
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 2091
    :cond_55
    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2092
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist unionDN(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .registers 5

    .line 468
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_d

    if-nez p2, :cond_9

    return-object p1

    .line 474
    :cond_9
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 480
    :cond_d
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 482
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 483
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 485
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 487
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 489
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 491
    :cond_2e
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 493
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 497
    :cond_38
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 498
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_3f
    return-object p0
.end method

.method private blacklist unionDNS(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .registers 6

    .line 1469
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p2, :cond_9

    return-object p1

    .line 1475
    :cond_9
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 1481
    :cond_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1483
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1484
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1486
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1488
    invoke-direct {p0, v1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1490
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 1492
    :cond_2c
    invoke-direct {p0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1494
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 1498
    :cond_36
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1499
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_3d
    return-object v0
.end method

.method private blacklist unionEmail(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .registers 5

    .line 582
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p2, :cond_9

    return-object p1

    .line 588
    :cond_9
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 593
    :cond_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 595
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 596
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 598
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 600
    invoke-direct {p0, v1, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionEmail(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_16

    :cond_26
    return-object v0
.end method

.method private blacklist unionEmail(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 8

    const/16 v0, 0x40

    .line 1158
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "."

    const/4 v3, -0x1

    if-eq v1, v3, :cond_54

    .line 1160
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1162
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_2c

    .line 1164
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 1166
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1170
    :cond_25
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1171
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1175
    :cond_2c
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1177
    invoke-direct {p0, v1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 1179
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1183
    :cond_3c
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1184
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1190
    :cond_43
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4d

    .line 1192
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1196
    :cond_4d
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1197
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1202
    :cond_54
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 1204
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_7b

    .line 1206
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1207
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_74

    .line 1209
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1213
    :cond_74
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1214
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1218
    :cond_7b
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1220
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9f

    .line 1221
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8e

    goto :goto_9f

    .line 1225
    :cond_8e
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_98

    .line 1227
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1231
    :cond_98
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1232
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1223
    :cond_9f
    :goto_9f
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1237
    :cond_a3
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_ad

    .line 1239
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1243
    :cond_ad
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1244
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1251
    :cond_b4
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_d5

    .line 1253
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1254
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_ce

    .line 1256
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1260
    :cond_ce
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1261
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1265
    :cond_d5
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 1267
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e5

    .line 1269
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1273
    :cond_e5
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1274
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1280
    :cond_ec
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f6

    .line 1282
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1286
    :cond_f6
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1287
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist unionIP(Ljava/util/Set;[B)Ljava/util/Set;
    .registers 5

    .line 656
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p2, :cond_9

    return-object p1

    .line 662
    :cond_9
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 668
    :cond_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 670
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 671
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 673
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 674
    invoke-direct {p0, v1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionIPRange([B[B)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_16

    :cond_2a
    return-object v0
.end method

.method private blacklist unionIPRange([B[B)Ljava/util/Set;
    .registers 4

    .line 690
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 693
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 695
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 699
    :cond_f
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 700
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private blacklist unionOtherName(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/x509/OtherName;)Ljava/util/Set;
    .registers 3

    .line 544
    new-instance p0, Ljava/util/HashSet;

    if-eqz p1, :cond_8

    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_b

    :cond_8
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 546
    :goto_b
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private blacklist unionURI(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .registers 5

    .line 1659
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p2, :cond_9

    return-object p1

    .line 1665
    :cond_9
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 1671
    :cond_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1673
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1674
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1676
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1678
    invoke-direct {p0, v1, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionURI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_16

    :cond_26
    return-object v0
.end method

.method private blacklist unionURI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 8

    const/16 v0, 0x40

    .line 1296
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "."

    const/4 v3, -0x1

    if-eq v1, v3, :cond_54

    .line 1298
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1300
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_2c

    .line 1302
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 1304
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1308
    :cond_25
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1309
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1313
    :cond_2c
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1315
    invoke-direct {p0, v1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 1317
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1321
    :cond_3c
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1322
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1328
    :cond_43
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4d

    .line 1330
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1334
    :cond_4d
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1335
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1340
    :cond_54
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 1342
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_7b

    .line 1344
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1345
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_74

    .line 1347
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1351
    :cond_74
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1352
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1356
    :cond_7b
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1358
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9f

    .line 1359
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8e

    goto :goto_9f

    .line 1363
    :cond_8e
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_98

    .line 1365
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1369
    :cond_98
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1370
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1361
    :cond_9f
    :goto_9f
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1375
    :cond_a3
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_ad

    .line 1377
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1381
    :cond_ad
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1382
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1389
    :cond_b4
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_d5

    .line 1391
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1392
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_ce

    .line 1394
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1398
    :cond_ce
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1399
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1403
    :cond_d5
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 1405
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e5

    .line 1407
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1411
    :cond_e5
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1412
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1418
    :cond_ec
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f6

    .line 1420
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1424
    :cond_f6
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1425
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static blacklist withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z
    .registers 11

    .line 313
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_9

    return v1

    .line 318
    :cond_9
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-le v0, v3, :cond_14

    return v1

    .line 324
    :cond_14
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v0

    move v3, v1

    move v4, v3

    .line 325
    :goto_1e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v3, v5, :cond_39

    .line 328
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v4

    .line 329
    invoke-static {v0, v4}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->rDNAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v4

    if-eqz v4, :cond_33

    goto :goto_3a

    :cond_33
    add-int/lit8 v4, v3, 0x1

    move v8, v4

    move v4, v3

    move v3, v8

    goto :goto_1e

    :cond_39
    move v3, v4

    .line 335
    :goto_3a
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-le v0, v4, :cond_46

    return v1

    :cond_46
    move v0, v1

    .line 340
    :goto_47
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-ge v0, v4, :cond_c0

    .line 343
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v4

    add-int v5, v3, v0

    .line 344
    invoke-virtual {p0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v5

    .line 347
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->size()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->size()I

    move-result v7

    if-ne v6, v7, :cond_bf

    .line 356
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-nez v6, :cond_80

    return v1

    .line 360
    :cond_80
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->size()I

    move-result v6

    if-ne v6, v2, :cond_b5

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    sget-object v7, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 362
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_bc

    return v1

    .line 367
    :cond_b5
    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->rDNAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v4

    if-nez v4, :cond_bc

    return v1

    :cond_bc
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_bf
    return v1

    :cond_c0
    return v2
.end method

.method private blacklist withinDomain(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 1066
    const-string p0, "."

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    .line 1068
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_d
    const/16 p0, 0x2e

    .line 1070
    invoke-static {p2, p0}, Lcom/android/org/bouncycastle/util/Strings;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object p2

    .line 1071
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/util/Strings;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object p0

    .line 1073
    array-length p1, p0

    array-length v1, p2

    const/4 v2, 0x0

    if-gt p1, v1, :cond_1d

    return v2

    .line 1077
    :cond_1d
    array-length p1, p0

    array-length v1, p2

    sub-int/2addr p1, v1

    const/4 v1, -0x1

    move v3, v1

    .line 1078
    :goto_22
    array-length v4, p2

    if-ge v3, v4, :cond_44

    if-ne v3, v1, :cond_34

    add-int v4, v3, p1

    .line 1082
    aget-object v4, p0, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    return v2

    .line 1087
    :cond_34
    aget-object v4, p2, v3

    add-int v5, v3, p1

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_41

    return v2

    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_44
    return v0
.end method


# virtual methods
.method public blacklist addExcludedSubtree(Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .registers 4

    .line 227
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v0

    if-eqz v0, :cond_83

    const/4 v1, 0x1

    if-eq v0, v1, :cond_76

    const/4 v1, 0x2

    if-eq v0, v1, :cond_69

    const/4 v1, 0x4

    if-eq v0, v1, :cond_56

    const/4 v1, 0x6

    if-eq v0, v1, :cond_49

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2e

    .line 252
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    .line 253
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    .line 252
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionIP(Ljava/util/Set;[B)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    return-void

    .line 256
    :cond_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag encountered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 248
    :cond_49
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    .line 249
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionURI(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    return-void

    .line 244
    :cond_56
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    .line 245
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 244
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionDN(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    return-void

    .line 240
    :cond_69
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionDNS(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    return-void

    .line 236
    :cond_76
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    .line 237
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionEmail(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    return-void

    .line 232
    :cond_83
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesOtherName:Ljava/util/Set;

    .line 233
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/OtherName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/OtherName;

    move-result-object p1

    .line 232
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->unionOtherName(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/x509/OtherName;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesOtherName:Ljava/util/Set;

    return-void
.end method

.method public blacklist checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    .registers 4

    .line 103
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v0

    if-eqz v0, :cond_52

    const/4 v1, 0x1

    if-eq v0, v1, :cond_48

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_32

    const/4 v1, 0x6

    if-eq v0, v1, :cond_28

    const/4 v1, 0x7

    if-eq v0, v1, :cond_16

    return-void

    .line 121
    :cond_16
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedIP(Ljava/util/Set;[B)V

    return-void

    .line 118
    :cond_28
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedURI(Ljava/util/Set;Ljava/lang/String;)V

    return-void

    .line 115
    :cond_32
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedDN(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    return-void

    .line 112
    :cond_3e
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedDNS(Ljava/util/Set;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_48
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedEmail(Ljava/util/Set;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_52
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesOtherName:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/OtherName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/OtherName;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedOtherName(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/x509/OtherName;)V

    return-void
.end method

.method public blacklist checkExcludedDN(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 3

    .line 306
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedDN(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public blacklist checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    .registers 4

    .line 68
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v0

    if-eqz v0, :cond_52

    const/4 v1, 0x1

    if-eq v0, v1, :cond_48

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_32

    const/4 v1, 0x6

    if-eq v0, v1, :cond_28

    const/4 v1, 0x7

    if-eq v0, v1, :cond_16

    return-void

    .line 86
    :cond_16
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedIP(Ljava/util/Set;[B)V

    return-void

    .line 83
    :cond_28
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedURI(Ljava/util/Set;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_32
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedDN(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    return-void

    .line 77
    :cond_3e
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedDNS(Ljava/util/Set;Ljava/lang/String;)V

    return-void

    .line 74
    :cond_48
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedEmail(Ljava/util/Set;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_52
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesOtherName:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/OtherName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/OtherName;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedOtherName(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/x509/OtherName;)V

    return-void
.end method

.method public blacklist checkPermittedDN(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 3

    .line 300
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedDN(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 278
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 282
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    .line 283
    iget-object v0, p1, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    invoke-direct {p0, v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    .line 284
    invoke-direct {p0, v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    .line 285
    invoke-direct {p0, v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    .line 286
    invoke-direct {p0, v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    .line 287
    invoke-direct {p0, v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesOtherName:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesOtherName:Ljava/util/Set;

    .line 288
    invoke-direct {p0, v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    .line 289
    invoke-direct {p0, v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    .line 290
    invoke-direct {p0, v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    .line 291
    invoke-direct {p0, v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    .line 292
    invoke-direct {p0, v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    .line 293
    invoke-direct {p0, v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object p1, p1, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesOtherName:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesOtherName:Ljava/util/Set;

    .line 294
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_82

    const/4 p0, 0x1

    return p0

    :cond_82
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    .line 263
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    .line 264
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    .line 265
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    .line 266
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesOtherName:Ljava/util/Set;

    .line 267
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    .line 268
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    .line 269
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    .line 270
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    .line 271
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    .line 272
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesOtherName:Ljava/util/Set;

    .line 273
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public blacklist intersectPermittedSubtree([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .registers 7

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 144
    :goto_6
    array-length v2, p1

    if-eq v1, v2, :cond_31

    .line 146
    aget-object v2, p1, v1

    .line 147
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 148
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

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 155
    :cond_31
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 157
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 160
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_c3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_95

    const/4 v2, 0x6

    if-eq v1, v2, :cond_86

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6f

    .line 184
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    .line 185
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 184
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectIP(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    goto :goto_39

    .line 188
    :cond_6f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown tag encountered: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_86
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 180
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectURI(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    goto :goto_39

    .line 176
    :cond_95
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 176
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectDN(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    goto :goto_39

    .line 172
    :cond_a4
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 172
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectDNS(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    goto :goto_39

    .line 168
    :cond_b3
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 168
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectEmail(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    goto/16 :goto_39

    .line 164
    :cond_c3
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesOtherName:Ljava/util/Set;

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 164
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectOtherName(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesOtherName:Ljava/util/Set;

    goto/16 :goto_39

    :cond_d3
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 2102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2104
    const-string v1, "permitted:"

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2105
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    const-string v2, "DN:"

    if-eqz v1, :cond_1c

    .line 2107
    invoke-direct {p0, v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2108
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2110
    :cond_1c
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    const-string v3, "DNS:"

    if-eqz v1, :cond_2e

    .line 2112
    invoke-direct {p0, v0, v3}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2113
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2115
    :cond_2e
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    const-string v4, "Email:"

    if-eqz v1, :cond_40

    .line 2117
    invoke-direct {p0, v0, v4}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2118
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2120
    :cond_40
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    const-string v5, "URI:"

    if-eqz v1, :cond_52

    .line 2122
    invoke-direct {p0, v0, v5}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2123
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2125
    :cond_52
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    const-string v6, "IP:"

    if-eqz v1, :cond_64

    .line 2127
    invoke-direct {p0, v0, v6}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2128
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->stringifyIPCollection(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2130
    :cond_64
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesOtherName:Ljava/util/Set;

    const-string v7, "OtherName:"

    if-eqz v1, :cond_76

    .line 2132
    invoke-direct {p0, v0, v7}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2133
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->permittedSubtreesOtherName:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->stringifyOtherNameCollection(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2135
    :cond_76
    const-string v1, "excluded:"

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2136
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 2138
    invoke-direct {p0, v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2139
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2141
    :cond_8f
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a3

    .line 2143
    invoke-direct {p0, v0, v3}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2144
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2146
    :cond_a3
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b7

    .line 2148
    invoke-direct {p0, v0, v4}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2149
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2151
    :cond_b7
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_cb

    .line 2153
    invoke-direct {p0, v0, v5}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2154
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2156
    :cond_cb
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_df

    .line 2158
    invoke-direct {p0, v0, v6}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2159
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->stringifyIPCollection(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2161
    :cond_df
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesOtherName:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f3

    .line 2163
    invoke-direct {p0, v0, v7}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2164
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->excludedSubtreesOtherName:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->stringifyOtherNameCollection(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2166
    :cond_f3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
